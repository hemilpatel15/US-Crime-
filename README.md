# 🕵️‍♂️ Building a Crime Reports Database using MySQL & Python

This project demonstrates the process of building, populating, and analyzing a structured database for crime reports using real-world data. It is built using MySQL, Python, and Jupyter Notebook. The dataset consists of 100,000 crime records with detailed information such as date, time, location, crime type, and victim details.

## 📂 Project Structure


---

## 📌 Features

- ✅ Clean and preprocess a raw crime dataset
- ✅ Create MySQL database and tables
- ✅ Load cleaned data from Pandas DataFrame into MySQL
- ✅ Run useful SQL queries to analyze crime patterns
- ✅ Perform Exploratory Data Analysis (EDA) using Pandas and Matplotlib

---

## 🛠 Technologies Used

- Python 3.x
- Pandas
- Matplotlib
- MySQL (with MySQL Workbench)
- SQLAlchemy
- Jupyter Notebook

---

## 🧪 Sample SQL Queries

```sql
-- Total number of crime reports
SELECT COUNT(*) FROM crime_reports;

-- Top 5 most common crime types
SELECT crm_cd_desc, COUNT(*) AS count 
FROM crime_reports
GROUP BY crm_cd_desc
ORDER BY count DESC
LIMIT 5;

-- Crimes per area
SELECT area_name, COUNT(*) AS total_crimes
FROM crime_reports
GROUP BY area_name
ORDER BY total_crimes DESC;
