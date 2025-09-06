### Cryptocurrency Data Analysis: BTC/USDT on Binance

This project is a data analysis of the BTC/USDT (Bitcoin to Tether) trading pair on the Binance exchange. The project demonstrates skills in **data analysis**, **data preparation (ETL)**, and **SQL proficiency using MySQL**.

---

### Project Overview

The goal of this project is to explore historical daily trading data for BTC/USDT to identify key trends and metrics. The analysis was structured to answer specific business questions and demonstrate a range of SQL capabilities.

### Technologies Used

* **Python**: Used in a Jupyter Notebook for the initial data cleaning and preparation of the raw `.csv` file.
* **MySQL**: The database platform used for all analytical queries.
* **SQL**: The core language for data exploration and analysis.

### Data Sources

* `btc_1d_data_2018_to_2025.csv`: The original raw dataset with daily trading data for BTC/USDT from 2018 to 2025.
* `btc_data_cleaning.ipynb`: A Jupyter Notebook that details the data cleaning process.
* `btc_1d_data_cleaned.csv`: The final cleaned dataset used for SQL analysis.
* `btc.sql`: A comprehensive file containing all the SQL queries used in this project.

### Key Project Steps

#### 1. Data Preparation with Python

This stage involved using a Jupyter Notebook to prepare the raw data for the database. 
* Loading the raw data into a pandas DataFrame.
* Converting timestamp columns to the appropriate `datetime` format.
* Exporting the final cleaned data to `btc_1d_data_cleaned.csv`.

#### 2. Data Analysis with SQL (MySQL)

After the data was imported into the MySQL database, a series of queries was executed to explore the market and uncover key insights. The `btc.sql` file is organized into three sections:

**Data Exploration**
* **Q1-Q3**: Basic queries to understand the dataset's scale, time range, and average metrics.

**Market Analysis**
* **Q4-Q6**: Queries to identify significant events such as the highest closing price and days with the largest trading volume. This section also includes an annual breakdown of trading volume.

**Time-Based Analysis and Advanced Queries**
* **Q7-Q11**: This section demonstrates advanced SQL skills, including:
    * Using mathematical operations to calculate daily price changes.
    * Filtering data to find specific trends (e.g., days with price increases).
    * Leveraging **window functions** to calculate a 30-day rolling average and find the longest consecutive streak of price increases.
    * Using CTEs and JOINs to identify the top 5 most profitable months.

---

### Key Findings

The project provided valuable insights into the dynamics of the Bitcoin market, including:

* **[Key Finding 1]**: The month with the highest absolute profit over the entire period was **November 2024**, with a total gain of **$26,115.98**.
* **[Key Finding 2]**: The day with the largest trading volume was **November 8, 2022**, with a volume of **760,705 BTC**, which points to a period of extremely high market activity.
* **[Key Finding 3]**: The 30-day rolling average of the closing price was used to identify long-term trends, which confirmed a sustained upward momentum in the market during the first quarter of 2024. 
* **[Key Finding 4]**: The average daily trading value (`Quote asset volume`) in 2024 was **lower** than in 2023, even though the average price of Bitcoin was significantly higher. This suggests that market activity did not increase in proportion to the price rise during that period.
