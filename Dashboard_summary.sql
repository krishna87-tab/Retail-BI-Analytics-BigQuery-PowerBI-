CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_dashboard_summary` AS
SELECT
  order_date,
  year,
  quarter,
  month,
  month_name,
  category,
  subcategory,
  brand,
  customer_segment,
  age_group,
  customer_state,
  store_type,
  store_state,
  channel_name,
  channel_type,
  COUNT(DISTINCT order_id) AS total_orders,
  COUNT(DISTINCT customer_id) AS total_customers,
  SUM(quantity) AS units_sold,
  SUM(sales_amount) AS revenue,
  SUM(profit_amount) AS profit,
  SUM(item_discount_amount) AS discount_amount,
  SAFE_DIVIDE(SUM(profit_amount), SUM(sales_amount)) AS profit_margin,
  SAFE_DIVIDE(SUM(sales_amount), COUNT(DISTINCT order_id)) AS average_order_value

FROM `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_sales_detail`
WHERE order_status = 'Completed'

GROUP BY
  order_date,
  year,
  quarter,
  month,
  month_name,
  category,
  subcategory,
  brand,
  customer_segment,
  age_group,
  customer_state,
  store_type,
  store_state,
  channel_name,
  channel_type;
