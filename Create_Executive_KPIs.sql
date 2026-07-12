CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_executive_kpis` AS
SELECT
  SUM(CASE WHEN order_status = 'Completed' THEN sales_amount ELSE 0 END) AS total_revenue,
  SUM(CASE WHEN order_status = 'Completed' THEN profit_amount ELSE 0 END) AS total_profit,
  COUNT(DISTINCT CASE WHEN order_status = 'Completed' THEN order_id END) AS total_orders,
  COUNT(DISTINCT CASE WHEN order_status = 'Completed' THEN customer_id END) AS total_customers,
  SUM(CASE WHEN order_status = 'Completed' THEN quantity ELSE 0 END) AS units_sold,

  SAFE_DIVIDE(
    SUM(CASE WHEN order_status = 'Completed' THEN profit_amount ELSE 0 END),
    SUM(CASE WHEN order_status = 'Completed' THEN sales_amount ELSE 0 END)
  ) AS profit_margin,

  SAFE_DIVIDE(
    SUM(CASE WHEN order_status = 'Completed' THEN sales_amount ELSE 0 END),
    COUNT(DISTINCT CASE WHEN order_status = 'Completed' THEN order_id END)
  ) AS average_order_value,

  SAFE_DIVIDE(
    COUNT(DISTINCT CASE WHEN order_status = 'Returned' THEN order_id END),
    COUNT(DISTINCT order_id)
  ) AS return_rate,

  SAFE_DIVIDE(
    COUNT(DISTINCT CASE WHEN order_status = 'Cancelled' THEN order_id END),
    COUNT(DISTINCT order_id)
  ) AS cancellation_rate
  
FROM `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_sales_detail`;
