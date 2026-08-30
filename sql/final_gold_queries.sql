--1: Daily Sales
SELECT
    order_day,
    total_orders,
    total_revenue,
    average_order_value
FROM workspace.gold.daily_sales
ORDER BY order_day;

-- 2: Product Sales
SELECT
    product_id,
    product_name,
    category,
    units_sold,
    revenue
FROM workspace.gold.product_sales
ORDER BY revenue DESC;

-- 3: Customers 360
SELECT
    customer_id,
    first_name,
    last_name,
    email,
    city,
    state,
    customer_segment,
    total_orders,
    lifetime_value,
    average_order_value,
    last_order_date
FROM workspace.gold.customer_360
ORDER BY lifetime_value DESC;

--- 4: Inventory KPI
SELECT
    product_id,
    product_name,
    category,
    warehouse_id,
    quantity_available,
    quantity_reserved,
    available_after_reservation,
    inventory_status
FROM workspace.gold.inventory_kpi
ORDER BY available_after_reservation;

-- 5: Category Sales
SELECT
    category,
    units_sold,
    revenue
FROM workspace.gold.category_sales
ORDER BY revenue DESC;


SELECT COUNT(*) AS total_events
FROM workspace.bronze.web_events;
