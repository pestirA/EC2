SELECT bill_payer_account_id,
         line_item_usage_account_id,
         line_item_usage_start_date,
         line_item_usage_end_date,
         line_item_product_code,
         line_item_usage_type,
         line_item_operation,
         date_diff('day', line_item_usage_start_date, line_item_usage_end_date) as numdays
FROM ENTERCURFILE 
WHERE line_item_product_code LIKE 'AmazonEC2' AND bill_payer_account_id LIKE 'ENTERACCOUNT'
