CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_product_performance` AS
SELECT
  product_id,
  product_name,
  category,
  subcategory,
  brand,
  SUM(quantity) AS units_sold,
  SUM(sales_amount) AS revenue,
  SUM(profit_amount) AS profit,
  SUM(item_discount_amount) AS discount_amount,
  COUNT(DISTINCT order_id) AS total_orders,
  SAFE_DIVIDE(SUM(profit_amount), SUM(sales_amount)) AS profit_margin,
  SAFE_DIVIDE(SUM(item_discount_amount), SUM(sales_amount)) AS discount_rate
  
FROM `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_sales_detail`
WHERE order_status = 'Completed'
GROUP BY product_id, product_name, category, subcategory, brand;
