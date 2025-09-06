Cryptocurrency Data Analysis: BTC/USDT on Binance
This project is a data analysis of the BTC/USDT (Bitcoin to Tether) trading pair on the Binance exchange. The project demonstrates skills in data analysis, data preparation (ETL), and SQL proficiency.

Project Overview
The goal of this project is to explore historical daily trading data for BTC/USDT to identify key trends, metrics, and anomalies. The following tasks were completed:

Preparation and cleaning of the raw data.

Extraction of key market metrics for in-depth analysis.

Identification of long-term trends and patterns.

Execution of advanced analysis using complex SQL queries.

Technologies Used
Python: Used for initial data preparation and cleaning.

Jupyter Notebook: For executing Python code and documenting the data cleaning process.

MySQL: For performing all analytical queries on the cleaned dataset.

Data Sources
btc_1d_data_2018_to_2025.csv: The original file with daily trading data for BTC/USDT from 2018 to 2025.

btc_data_cleaning.ipynb: The Jupyter Notebook detailing the data preparation process.

Key Project Steps
1. Data Preparation with Python
This stage involved using a Jupyter Notebook (btc_data_cleaning.ipynb) to prepare the raw data file. The main steps included:

Loading the data into a pandas DataFrame.

Converting timestamp columns to the correct format.

Checking for missing values and duplicates.

Saving the cleaned dataset to a new file, btc_1d_data_cleaned.csv.

This step highlights my ability to handle raw data using Python and popular data analysis libraries before loading it into a database.

2. Data Analysis with SQL (MySQL)
After cleaning, the btc_1d_data_cleaned.csv file was loaded into a MySQL database. All analytical queries were performed using SQL. The btc.sql file contains queries that answer the following questions:

Data Exploration: Finding the date range, total number of records, and average prices.

Market Analysis: Identifying days with the highest price and trading volume, and calculating average volatility.

Advanced Analysis: Calculating moving averages, identifying the most profitable months, and finding the longest consecutive price increase streaks.

Key Findings
The project provided valuable insights into the dynamics of the Bitcoin market, including:

[Key Finding 1]: For example, "Trading volume increased significantly in certain years, indicating growing market interest."

[Key Finding 2]: For example, "The moving average analysis confirmed long-term trends, which can be useful for investment decision-making."

[Key Finding 3]: For example, "The most profitable month over the entire period was [Month Name], when the price grew by [percentage]."

This project serves as a comprehensive demonstration of my skills as a data analyst, from data cleaning and preparation to in-depth analysis.
