CREATE SCHEMA IF NOT EXISTS `project-58590435-81ce-49e7-b27.retail_bi_mart`;


SELECT 'dim_date' AS table_name, COUNT(*) AS row_count
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_date`
UNION ALL
SELECT 'dim_customer', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_customer`
UNION ALL
SELECT 'dim_product', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_product`
UNION ALL
SELECT 'dim_store', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_store`
UNION ALL
SELECT 'dim_marketing_channel', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_marketing_channel`
UNION ALL
SELECT 'fct_orders', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_orders`
UNION ALL
SELECT 'fct_order_items', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_order_items`
UNION ALL
SELECT 'fct_payments', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_payments`
UNION ALL
SELECT 'fct_inventory', COUNT(*)
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_inventory`;
