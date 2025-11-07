# 🚖 HNG Ride-Hailing Business Analysis

## ✅ Executive Summary  
This project is a complete SQL driven analysis of a ride-hailing platform. It explores operational performance, rider behavior, driver activity, revenue growth, and service efficiency from 2021 to 2024. The goal was to extract clear insights that support strategic decision making and highlight opportunities for improvement.

**Prepared by:** Osolake Mariam Omotolani  
**Date:** October 2025  

---

# 📚 Table of Contents  
1. [Overview](#overview)  
2. [Data Preparation](#1-data-preparation)  
3. [Exploratory Data Analysis Summary](#2-exploratory-data-analysis-summary)  
4. [Business Questions and Insights](#3-business-questions-and-key-insights)  
5. [Recommendations](#4-recommendations)  
6. [Conclusion](#5-conclusion)  
7. [Folder Structure](#folder-structure)  
8. [Project Files](#project-files)

---

## Overview  
This analysis examines the performance of a ride-hailing platform using SQL and PostgreSQL. The focus includes rider activity, driver performance, payment behaviors, revenue trends, and city level operational patterns.

The insights presented in this report provide a clear picture of platform growth, customer engagement, and areas requiring operational improvement.

---

# 1. Data Preparation  
The dataset was cleaned and organized before analysis. Steps included:

- Renaming columns for consistent and readable labels  
- Converting dates, times, and numeric fields to correct types  
- Removing records with missing critical data  
- Eliminating duplicate ride and payment entries  
- Ensuring ride_id values matched across tables  
- Validating status values for accuracy

These steps ensured a reliable and consistent dataset.

---

# 2. Exploratory Data Analysis Summary  
Key observations from the initial exploration:

- Overall platform activity stabilized after a strong growth surge in 2022  
- Cash and digital payments were nearly evenly used  
- Cancellation rates averaged about 18 percent  
- Rider satisfaction remained high with an average of about 4.47  
- Chicago and New York recorded the highest ratings at about 4.52

---

# 3. Business Questions and Key Insights  

## 🔹 Question 1: What were the top 10 longest rides?  
**Objective:** Understand long-distance travel patterns and fare potential.  
**Insights:**  
- Longest rides were 30.00 km, including trips by Driver_1774 (Calgary to Los Angeles) and Driver_1886 (Ottawa to Vancouver)  
- Calgary, Ottawa, Toronto, Boston, and New York appeared often among long-distance routes  
- Cash payments dominated, although the longest single ride was paid with a voucher

---

## 🔹 Question 2: How many riders from 2021 remained active in 2024?  
**Objective:** Measure long-term rider retention.  
**Insights:**  
- A total of 1,848 riders from the 2021 cohort were still active in 2024  
- This represents strong multi-year engagement

---

## 🔹 Question 3: Which quarter recorded the highest year over year revenue growth?  
**Objective:** Evaluate revenue growth across years.  
**Insights:**  
- Quarter 2 of 2022 recorded 200.90 percent year over year revenue growth with a total of 104,654.66 dollars  
- This indicates a strong expansion period

---

## 🔹 Question 4: Which drivers recorded the highest average monthly rides?  
**Objective:** Identify consistent and dependable drivers.  
**Top performers:**  
1. Driver_1232 – 1.82 rides per month  
2. Driver_138 – 1.70 rides per month  
3. Driver_431 – 1.69 rides per month  
4. Driver_235 – 1.67 rides per month  
5. Driver_537 – 1.67 rides per month  

---

## 🔹 Question 5: Which cities had the highest cancellation rates?  
**Objective:** Detect operational challenges.  
**Insights:**  
- Chicago: 19.26 percent  
- Toronto: 19.08 percent  
- San Francisco: 18.47 percent  

These cities may suffer from traffic, demand surges, or insufficient driver coverage.

---

## 🔹 Question 6: Which riders completed more than 10 rides without using cash?  
**Objective:** Understand digital payment adoption.  
**Insights:**  
- Seven riders completed 11 to 12 rides each using only digital payment methods  
- This group is well suited for digital loyalty rewards

---

## 🔹 Question 7: Who were the top revenue generating drivers in each city?  
**Objective:** Highlight drivers contributing strongly to revenue.  
**Boston example:**  
1. Driver_1176 – 474.06 dollars  
2. Driver_69 – 441.31 dollars  
3. Driver_815 – 394.57 dollars  

---

## 🔹 Question 8: Which drivers qualified for bonuses?  
**Criteria:**  
- At least 30 rides  
- Rating of 4.5 or higher  
- Cancellation rate below 5 percent  

**Qualified drivers:**  
1. Driver_1005: 34 rides, 4.80 rating, 0 percent cancellations, 1,462.54 dollars revenue  
2. Driver_1181: 32 rides, 4.60 rating, 3.13 percent cancellations, 1,381.92 dollars revenue  

Low qualification suggests the criteria may be too strict.

---

# 4. Recommendations  

- Investigate high cancellation rates in Chicago and Toronto  
- Introduce incentives for riders who consistently use digital payments  
- Adjust bonus requirements to increase driver motivation while maintaining standards  
- Continue monitoring top performing drivers to support retention and reward consistency  

---

# 5. Conclusion  
The ride-hailing platform shows stable growth, strong customer retention, and healthy revenue momentum.  
Digital payment adoption continues to rise and presents opportunities for new innovations.  
Insights from the analysis can help improve operations, enhance service quality, and support long-term strategic planning.

---

# Folder Structure
HNG-Ride-Hailing-Analysis/
│
├── queries/
│ └── all SQL files
│
├── report/
│ └── HNG_Ride_Hailing_Report.pdf
│
└── README.md


---

# Project Files

- SQL query scripts  
- PDF report  
- README documentation

NOTE: The dataset used for this analysis belongs to HNG and is not publicly available.
Queries are included for reference.

---




