✈️ **Flight Booking & Travel Data Analysis Dashboard**

📌 **Project Overview**

- This project is an end-to-end data analytics solution built to analyze flight booking data and derive actionable business insights.
- The objective was to simulate a real-world analytics workflow, starting from raw data processing to KPI creation, validation, and dashboard storytelling.

🎯 **Business Objective**

- To analyze flight booking data and answer key business questions:

1. Which airlines generate the most revenue?
2. What is the customer booking behavior across travel classes?
3. How does flight duration impact ticket pricing?
4. Which cities are operationally efficient and consistent?
5. What are the key revenue-driving customer segments?

🛠️ **Tools & Technologies Used**

1. Python (Pandas, NumPy, Seaborn, Matplotlib) → Data Cleaning, EDA, KPI creation
2. SQL → Data validation, aggregation, KPI cross-checking
3. Power BI → Dashboard design, DAX measures, visualization

🔄 **End-to-End Workflow**

1️⃣ **Data Cleaning & Preparation (Python)**

- Handled missing values and inconsistencies
- Created derived columns (Age Groups, Price per KM, etc.)
- Performed Exploratory Data Analysis (EDA) & Feature Engineering

2️⃣ **KPI Development (Python → SQL → Power BI)**

A structured approach was followed:

- Created KPIs in Python
- Recreated the same KPIs in SQL
- Validated results across both tools
- Finalized KPIs in Power BI using DAX

👉 This ensured 100% accuracy and consistency across tools

📊 **Key KPIs Created**

1. Total Bookings
2. Total Ticket Price
3. Average Ticket Price
4. Revenue per Booking
5. Total Distance Travelled
6. Price per KM
7. Flight Duration (Avg, Total)
8. Flight Duration Variability (Std Dev)
9. Revenue by Airline / City / Payment Method
10. Bookings by Travel Class
11. Passenger Age Group Analysis
12. Duration vs Price Relationship

📈 **Dashboard Design**

The dashboard is divided into two pages:

🟩 **Page 1: Executive Overview**

Focus: 

1. High-level business performance
2. KPI Cards (Revenue, Bookings, Distance, etc.)
3. Revenue by Airline
4. Revenue by City (Treemap)
5. Bookings by Travel Class
6. Flight Duration Distribution
7. Duration vs Price Scatter Plot

🟦 **Page 2: Detailed Analysis**

Focus: 

1. Deep insights & patterns
2. Revenue by Passenger Age Group
3. Payment Method Analysis
4. Average Flight Duration by Airline & Class
5. City Efficiency vs Consistency (Scatter Plot)
6. Ticket Price Variability

🔍 **Key Insights**

1. B Airways leads revenue generation (~$128K), followed closely by S & E Airlines, indicating competitive but slightly concentrated airline performance.
2. Mumbai and London are top revenue-generating cities, contributing the highest ticket sales among all locations.
3. Premium Economy (27.6%) and First Class (25.2%) dominate bookings, showing strong preference for higher-value travel segments.
4. Majority of flights fall within 5–15 hours, indicating dominance of medium to long-haul routes.
5. Weak correlation between flight duration and ticket price, suggesting pricing depends on multiple factors beyond duration (airline, class, demand).
6. Passengers aged 21–40 contribute the highest revenue (~$201K), making them the most valuable customer segment.
7. Credit Card, Net Banking, and Cash contribute nearly equal revenue (~$0.12M each), indicating balanced payment preferences.
8. Ticket price variability (~1497) is high, confirming a dynamic pricing model across routes and segments.
9. Mumbai shows lower duration and lower variability → most efficient city, while cities like Singapore & Dubai show higher duration and variability.
10. Air I and Q Airways have highest average flight durations, indicating focus on long-haul operations.

📊 **Visualization Highlights**

1. Histogram for flight duration distribution
2. Scatter plot for relationship analysis
3. Treemap for city-level revenue
4. Donut chart for travel class distribution
5. Bar charts for comparative analysis

💡 **Key Learnings**

1. Importance of validating KPIs across multiple tools
2. Understanding business interpretation of metrics (not just calculation)
3. Designing dashboards with clear storytelling and hierarchy
4. Using variability (Std Dev) to measure operational consistency

🚀 **Conclusion**

This project demonstrates an end-to-end data analytics workflow, combining:

1. Data processing (Python)
2. Data validation (SQL)
3. Data visualization (Power BI)

It reflects strong capability in data analysis, business thinking, and dashboard storytelling.

📎 **Files Included**

1. Raw Dataset
2. Cleaned Dataset
3. Python Notebook
4. SQL Queries
5. Power BI Dashboard (.pbix)
6. Dashboard Screenshots

⭐ If you found this useful, feel free to connect or reach out! :)
