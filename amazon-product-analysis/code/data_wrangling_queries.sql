-- 1 Check for the total number of records imported
SELECT COUNT(*) FROM products_reviews;

-- Find the total number of unique product categories
SELECT COUNT(DISTINCT category) FROM products_reviews;

SELECT
    -- Use string functions to extract the main category up to the first '|' symbol
    SUBSTR(category, 1, INSTR(category, '|') - 1) AS Top_Category,
    COUNT(product_id) AS Total_Products,
    SUM(discounted_price) AS Total_Revenue, -- Calculates the actual revenue for each category
    AVG(rating) AS Average_Rating,
    SUM(rating_count) AS Total_Reviews
FROM
    products_reviews
GROUP BY
    Top_Category
HAVING
    Total_Products > 5 -- Filter out small, irrelevant categories for a cleaner dashboard
ORDER BY
    Total_Revenue DESC;
	SELECT
    -- Use the crucial CASE WHEN statement to create clear segments (Tiers)
    CASE
        WHEN actual_price >= 2000 THEN '1. Premium (2000+)' -- High price point
        WHEN actual_price >= 500 AND actual_price < 2000 THEN '2. Mid-Range (500-2000)' -- Middle price point
        ELSE '3. Budget (<500)' -- Lowest price point
    END AS Price_Tier,
    COUNT(product_id) AS Products_in_Tier,
    ROUND(AVG(rating), 2) AS Avg_Rating_in_Tier, -- Round to 2 decimal places for cleanliness
    ROUND(AVG(discount_percentage), 2) AS Avg_Discount_Percent
FROM
    products_reviews
GROUP BY
    Price_Tier
ORDER BY
    -- Order by the Price_Tier to keep them in a logical Premium -> Budget order
    Price_Tier ASC;
	SELECT
    product_name,
    category,
    rating,
    rating_count,
    discounted_price,
    actual_price
FROM
    products_reviews
ORDER BY
    rating_count DESC -- Sort by the number of reviews from highest to lowest
LIMIT 10; -- Only show the top 10 most reviewed products
SELECT
    product_name,
    -- Re-extract the top-level category for better context
    SUBSTR(category, 1, INSTR(category, '|') - 1) AS Top_Category,
    rating,
    rating_count,
    discount_percentage,
    actual_price
FROM
    products_reviews
WHERE
    -- Filter 1: Low-rated products
    rating < 3.5
    -- Filter 2: High discount rate (suggesting the company is struggling to sell them)
    AND discount_percentage >= 50
ORDER BY
    rating ASC, -- Order by lowest rating first
    discount_percentage DESC -- Then by highest discount to highlight the worst offenders
LIMIT 15; -- Show the top 15 most problematic items