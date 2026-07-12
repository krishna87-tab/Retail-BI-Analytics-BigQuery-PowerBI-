CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_monthly_sales` AS
SELECT
  year,
  month,
  month_name,
  DATE_TRUNC(order_date, MONTH) AS month_start_date,
  SUM(sales_amount) AS revenue,
  SUM(profit_amount) AS profit,
  SUM(quantity) AS units_sold,
  COUNT(DISTINCT order_id) AS total_orders,
  COUNT(DISTINCT customer_id) AS total_customers,
  SAFE_DIVIDE(SUM(profit_amount), SUM(sales_amount)) AS profit_margin,
  SAFE_DIVIDE(SUM(sales_amount), COUNT(DISTINCT order_id)) AS average_order_value
FROM `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_sales_detail`
WHERE order_status = 'Completed'
GROUP BY year, month, month_name, month_start_date;
