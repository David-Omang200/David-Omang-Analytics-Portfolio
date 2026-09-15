E-commerce Sales Data Analysis With Microsoft Excel
Goal: Analyze the sales data to identify trends, top-selling products, and revenue metrics for business decision-making.
Step 1: Data Exploration This is the stage where I had to familiarize myself with the dataset. This gives me the opportunity to understand what the data is all about, discover columns that require cleaning, and also to checkmate if the dataset has the required columns to help me answer necessary business case questions.
To begin with, I had to structure it by converting it into a table. Ctrl+T was used and I had to name the table E-commerce.
The table has 9 columns (InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, Revenue, CustomerID, Country) and 185950 rows.
Step 2: Data Preparation This is where I had to prepare the dataset to make it fit for analysis. All observations in the exploration stage will be taken care of here.
The price of each and sales columns represent currency, so I had to introduce the $ sign.
The Invoice date column has a datatype of date-time I had to convert the order date to a short date from the home tab.
I used the text function to create the following additional columns from the Invoice date so as to be able to answer the question on trends:
1. Year
2. Month
3. Month Number
4. To get the column called Revenue, I used the formula =[Quantity]*[Unitprice]
Step 3: Data Analysis this is where I start answering the required questions. I used the pivot table and chart to draw up insights and create pictorial representations.
Below are the insights drawn from the project goal:
Having generated the insights via the Pivot table, I had to use the following charts:
1. Line chart to show monthly revenue
2. Bar chart to represent Top 10 products by revenue
3. Bar chart to represent Top 10 countries with highest revenue
4. Bar chart to represent Top 10 countries
5. Bar chart to represent number of orders by country.
Insights
Revenue increased steadily throughout the year, reaching its highest level in November before experiencing a slight decline in December. This suggests strong seasonal demand during the final quarter.
The United Kingdom contributes significantly more revenue and order volume than any other country, making it the company's strongest market.
A small number of products generate a large share of total revenue, indicating that sales are concentrated among best-selling items.
The highest-spending customers contribute a substantial portion of total sales, showing that customer retention is essential to maintaining revenue growth.
Dashboard
