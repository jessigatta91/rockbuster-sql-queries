# rockbuster-sql-queries
SQL queries for the Rockbuster Stealth project, analyzing sales and customer data in PostgreSQL

## Portfolio Highlights
- ✅ Advanced SQL queries: joins, aggregations, subqueries, window functions
- ✅ Answered business-critical questions for management
- ✅ Generated visual insights via Tableau dashboards
- ✅ Clean, well-commented, and maintainable code

## Project Overview
This repository contains SQL queries from the Rockbuster Stealth project. The goal was to help management **understand customer behavior, rentals, and movie preferences** across multiple locations, enabling data-driven decisions.

Key business questions addressed include:  
- Which customers are most profitable?  
- How do rental trends vary by location and time?  
- Which movies or genres are most popular among different customer segments?

All queries were written in PostgreSQL and were used to generate Tableau dashboards for **visual insights**.

## Dataset
The dataset includes anonymized customer transactions, rentals, and movie information. Data was cleaned and structured to ensure accurate analysis.

- **Source:** Provided as part of the Rockbuster Stealth project brief  
- **Visualizations:** Explore interactive dashboards here: [Tableau Public Link](https://public.tableau.com/views/3_10Task-Visualization-JessicaGatta/Total_Customer_Top10?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Skills Demonstrated
- SQL querying: joins, aggregations, subqueries, window functions  
- Translating business questions into SQL analysis  
- Data visualization integration with Tableau  
- Clean, well-documented, maintainable code

## Repository Structure
rockbuster-sql-queries/

├─ queries/ # SQL scripts organized by business question

├─ assets/ # Excel Tech File 

└─ README.md # This overview file

## Queries Overview
1. `01_total_customers_top_10_countries.sql`: Total customers in top 10 countries with average revenue  
2. `02_top_movies.sql`: Top and bottom 5 movies by revenue  
3. `03_rental_duration_by_genre_country.sql`: Average rental duration by genre and country  
4. `04_customer_geography.sql`: Total customers by country  
5. `05_high_value_customers.sql`: Top 5 high-value customers by total spending  
6. `06_regional_revenue.sql`: Total revenue per country  
7. `07_top_region_by_revenue.sql`: Top 5 countries by revenue and total customers  
8. `08_top_5_genres_in_top_10_countries.sql`: Top genres in top 10 countries by revenue  
9. `09_revenue_by_genres.sql`: Total revenue by genre  
10. `10_sales_by_rating.sql`: Total revenue by film rating

## Notes
- All queries have been tested and are error-free in PostgreSQL  
- Comments explain the logic and approach for clarity  
- Structured to make it easy to follow the analysis process  
- Excel file `Tech_Excel_File_Jessica_Gatta.xlsx` included in the `assets/` folder contains example outputs for each query



