# Analysis on Factor that affect  Bike Purchase Trends using SQL
  
Description:

Company ABEG wants to create electronic Bikes and wants to distribute to three continents. It’s not sure which continent will perform well. They are scared that  availability of cars  may be a big hindrance to the purchasing of the bikes.
This project involves analyzing customer demographics and their relationship with bike purchasing trends. The dataset includes information on customers' marital status, gender, income, number of children, education level, occupation, home ownership status, number of cars owned, commute distance, region, age, and whether they purchased a bike. The goal is to uncover insights about which demographics are more likely to purchase bikes and understand the key factors influencing bike purchases.

**Objectives:**

1.	Identify key demographics of customers who purchased bikes.
2.	Identify which gender is likely to purchase the bikes.
3.	Analyze the influence of income, education, and occupation on bike purchasing.
4.	Analyze whether marital status  and availability of car affect bike purchasing.
5.	Explore regional differences in bike purchasing trends.
6.	Understand the relationship between commute distance and bike purchasing.
7.	Understanding whether age is also a key factor to consider when marketing their bikes.


**Project Steps:**

1. **Data Cleaning and Preprocessing:**
Before diving into the analysis, I ensured the dataset was clean and consistent. This involved:
Removing Duplicates:
I identified and removed duplicate records to avoid data redundancy and distortion in analysis.
Handling Missing Values: Missing values in crucial columns were handled. I either removed rows with significant missing data or filled in reasonable defaults/median values, ensuring the integrity of the dataset was maintained.

2. **Exploratory Data Analysis (EDA):**

I performed SQL queries on various attributes to gain insights into the data, uncovering key findings.

**Key Findings:**

I. **Gender**:
Males purchased significantly more bikes than females. This might suggest a higher inclination among men to use bikes for transportation, fitness, or recreational purposes.

II. **Marital Status**:

Among females, single women were the highest purchasers, potentially driven by independence or lifestyle choices.
In contrast, married men showed a higher purchasing trend, which may be linked to family or commuting needs.

III. **Income**:

The majority of bike purchases came from lower-income individuals. This trend suggests that biking might be seen as an economical mode of transportation for those in this income bracket.

IV. **Occupation and Level of Education**:

Bike purchases were distributed across various occupations, but professionals, regardless of gender, stood out as the highest purchasers.
Education played a role, with individuals with bachelor’s degrees purchasing more bikes. This might reflect a higher awareness of environmental issues or healthier lifestyles.

V. **Car Ownership**:

Those with 0 to 2 cars bought significantly more bikes than those with more than two cars. This suggests that bikes may be used as an alternative transportation or a supplement to cars for households with fewer vehicles.

VI. **Region**:

Geographically, North America led in bike purchases, followed by Europe and then the Pacific Region. This insight could guide marketing strategies and bike distribution efforts to focus more on regions with higher demand.

VII. **Age**:

Millennials (aged 31 to 45) emerged as the primary age group for bike purchases, likely driven by fitness and commuting needs, environmental consciousness, and economic factors.

VIII. **Commute Distance**:

The ideal commute distance for bike purchasers was between 0-10 miles. This distance range indicates that people are likelier to use bikes for shorter, more manageable commutes.

IX. **Children**:

Families with fewer children tended to purchase more bikes. This could be related to financial flexibility and lifestyle choices, as smaller families might have more discretionary income to spend on bikes.


**Recommendations:**

**Target Marketing :** The data shows that males and millennials are the most active bike purchasers. Regarding females, they should focus mainly on the single millennial with no children. Marketing campaigns should focus on these demographics, highlighting benefits like fitness and economic commuting.

**Promote Biking to Lower-Income Groups**: Since lower-income individuals are the highest purchasers, promoting bikes as a cost-effective mode of transportation may drive further sales in this group.

**Focus on Regions with High Demand:** Given that North America and Europe have the highest bike purchases, distribution efforts should focus on these regions, with targeted promotions in key cities.

**Encourage Family Purchases**: Since families with fewer children are more likely to purchase bikes, companies could create family-oriented promotions or package deals that target smaller households.

**Bikes as an Alternative for Short Commutes**: Since most bike purchases align with commute distances of 0-10 miles, marketing campaigns could promote bikes as a practical and healthy alternative for short-distance commuters.


**Conclusion:**

Through SQL-based data analysis, I have uncovered meaningful insights about bike purchasing patterns that can drive more targeted marketing strategies and business decisions. This project demonstrates how effective data analysis can transform raw data into actionable business insights.








