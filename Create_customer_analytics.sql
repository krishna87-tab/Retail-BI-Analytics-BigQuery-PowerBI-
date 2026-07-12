CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_customer_analytics` AS
SELECT
  customer_id,
  customer_segment,
  gender,
  age_group,
  customer_city,
  customer_state,
  customer_country,
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(sales_amount) AS total_revenue,
  SUM(profit_amount) AS total_profit,
  SUM(quantity) AS units_purchased,
  MIN(order_date) AS first_order_date,
  MAX(order_date) AS last_order_date,
  SAFE_DIVIDE(SUM(sales_amount), COUNT(DISTINCT order_id)) AS average_order_value,
  CASE
    WHEN COUNT(DISTINCT order_id) > 1 THEN 'Repeat'
    ELSE 'One-time'
  END AS customer_type
FROM `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_sales_detail`
WHERE order_status = 'Completed'
GROUP BY
  customer_id,
  customer_segment,
  gender,
  age_group,
  customer_city,
  customer_state,
  customer_country;
