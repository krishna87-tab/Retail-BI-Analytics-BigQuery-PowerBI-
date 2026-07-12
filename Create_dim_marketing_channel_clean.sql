CREATE OR REPLACE VIEW `project-58590435-81ce-49e7-b27.retail_bi_mart.vw_dim_marketing_channel_clean` AS
SELECT
  string_field_0 AS channel_id,
  string_field_1 AS channel_name,
  string_field_2 AS channel_type,
  string_field_3 AS campaign_name,
  string_field_4 AS platform
FROM `project-58590435-81ce-49e7-b27.retail_bi_raw.dim_marketing_channel`
WHERE string_field_0 != 'channel_id';
