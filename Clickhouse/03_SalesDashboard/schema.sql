DROP TABLE IF EXISTS dw_sd_pharmacy_user;
CREATE TABLE dw_sd_pharmacy_user
(

    `company_key` Int64,

    `user_key` Int64,

    `pharmacy_key` Int64,

    `customer_cover` Int64,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 user_key,
 pharmacy_key)
SETTINGS index_granularity = 1024;

DROP TABLE IF EXISTS dw_sd_sales_detail;
CREATE TABLE dw_sd_sales_detail
(

    `time_key` Int64,

    `year_key` Int64,

    `month_key` Int64,

    `quarter_key` Int64,

    `product_detail` String,

    `product_key` Int64,

    `brand_key` Int64,

    `total_sale_amount` Float32,

    `total_sale_volume` Float32,

    `company_key` Int64,

    `pharmacy_key` Int64,

    `district_key` Int64,

    `city_key` Int64,

    `segment_key` Int64,

    `segment_type_key` Int64,

    `covered_key` Int8,

    `invoice_key` String,

    `partition_id` Date
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(partition_id)
PRIMARY KEY company_key
ORDER BY (company_key,
 partition_id,
 year_key)
SETTINGS index_granularity = 1024;