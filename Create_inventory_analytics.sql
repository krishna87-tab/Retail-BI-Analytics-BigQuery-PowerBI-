CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_inventory_summary` AS
SELECT
  DATE(i.inventory_date) AS inventory_date,
  d.year,
  d.month,
  d.month_name,
  i.product_id,
  p.product_name,
  p.category,
  p.subcategory,
  p.brand,
  i.store_id,
  s.store_name,
  s.store_type,
  s.city AS store_city,
  s.state AS store_state,
  SUM(SAFE_CAST(i.stock_on_hand AS INT64)) AS stock_on_hand,
  SUM(SAFE_CAST(i.reorder_level AS INT64)) AS reorder_level,
  SUM(SAFE_CAST(i.units_sold AS INT64)) AS units_sold,
  SUM(SAFE_CAST(i.units_received AS INT64)) AS units_received,
  CASE
    WHEN SUM(SAFE_CAST(i.stock_on_hand AS INT64)) = 0 THEN 'Out of Stock'
    WHEN SUM(SAFE_CAST(i.stock_on_hand AS INT64)) <= SUM(SAFE_CAST(i.reorder_level AS INT64)) THEN 'Low Stock'
    ELSE 'Healthy'
  END AS stock_status
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_inventory` i
JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_product` p

  ON i.product_id = p.product_id

JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_store` s
  ON i.store_id = s.store_id

LEFT JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_date` d
  ON DATE(i.inventory_date) = DATE(d.date)

GROUP BY
  inventory_date,
  d.year,
  d.month,
  d.month_name,
  i.product_id,
  p.product_name,
  p.category,
  p.subcategory,
  p.brand,
  i.store_id,
  s.store_name,
  s.store_type,
  store_city,
  store_state;
