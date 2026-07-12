CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_sales_detail` AS
SELECT
  o.order_id,
  oi.order_item_id,
  DATE(o.order_date) AS order_date,
  d.year,
  d.quarter,
  d.month,
  d.month_name,
  d.week_of_year,
  d.is_weekend,
  o.order_status,
  o.payment_status,
  c.customer_id,
  c.customer_segment,
  c.gender,
  c.age_group,
  c.city AS customer_city,
  c.state AS customer_state,
  c.country AS customer_country,
  p.product_id,
  p.product_name,
  p.category,
  p.subcategory,
  p.brand,
  s.store_id,
  s.store_name,
  s.store_type,
  s.city AS store_city,
  s.state AS store_state,
  s.country AS store_country,
  ch.channel_id,
  ch.channel_name,
  ch.channel_type,
  ch.campaign_name,
  ch.platform,
  SAFE_CAST(oi.quantity AS INT64) AS quantity,
  SAFE_CAST(oi.unit_price AS NUMERIC) AS unit_price,
  SAFE_CAST(oi.sales_amount AS NUMERIC) AS sales_amount,
  SAFE_CAST(oi.discount_amount AS NUMERIC) AS item_discount_amount,
  SAFE_CAST(oi.cost_amount AS NUMERIC) AS cost_amount,
  SAFE_CAST(oi.profit_amount AS NUMERIC) AS profit_amount,
  SAFE_CAST(o.total_amount AS NUMERIC) AS order_total_amount,
  SAFE_CAST(o.discount_amount AS NUMERIC) AS order_discount_amount,
  SAFE_CAST(o.shipping_amount AS NUMERIC) AS shipping_amount,
  SAFE_CAST(o.tax_amount AS NUMERIC) AS tax_amount

FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_orders` o
JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_order_items` oi

  ON o.order_id = oi.order_id

JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_customer` c
  ON o.customer_id = c.customer_id

JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_product` p
  ON oi.product_id = p.product_id

JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_store` s
  ON o.store_id = s.store_id

JOIN `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_dim_marketing_channel_clean` ch
  ON o.channel_id = ch.channel_id

LEFT JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_date` d
  ON DATE(o.order_date) = DATE(d.date);
