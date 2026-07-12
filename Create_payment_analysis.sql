CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_payment_analysis` AS
SELECT
  p.payment_method,
  p.payment_status,
  o.order_status,
  COUNT(DISTINCT p.payment_id) AS payment_count,
  COUNT(DISTINCT p.order_id) AS order_count,
  SUM(SAFE_CAST(p.payment_amount AS NUMERIC)) AS payment_amount,
  SAFE_DIVIDE(
    COUNT(DISTINCT CASE WHEN p.payment_status = 'Refunded' THEN p.payment_id END),
    COUNT(DISTINCT p.payment_id)
  ) AS refund_rate,
  SAFE_DIVIDE(
    COUNT(DISTINCT CASE WHEN p.payment_status = 'Failed' THEN p.payment_id END),
    COUNT(DISTINCT p.payment_id)
  ) AS failure_rate
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_payments` p
JOIN `project-58590435-81ce-49e7-b27.retail_bi_raw.fct_orders` o
  ON p.order_id = o.order_id
GROUP BY p.payment_method, p.payment_status, o.order_status;
