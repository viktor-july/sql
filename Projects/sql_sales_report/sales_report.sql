-- Total Sales per Region
SELECT
    c.region,
    SUM(s.quantity * s.unit_price) AS total_sales
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.region;

-- Top Selling Products
SELECT
    p.product_name,
    SUM(s.quantity) AS total_units_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC;

-- Monthly Sales Trend
SELECT
    DATE_TRUNC('month', s.sale_date) AS month,
    SUM(s.quantity * s.unit_price) AS total_sales
FROM Sales s
GROUP BY month
ORDER BY month;

-- Customer Sales Ranking
SELECT
    c.customer_name,
    SUM(s.quantity * s.unit_price) AS total_spent,
    RANK() OVER (ORDER BY SUM(s.quantity * s.unit_price) DESC) AS rank
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_name;
