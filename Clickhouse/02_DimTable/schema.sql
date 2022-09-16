CREATE TABLE dim_areas
(

    `company_key` Int64,

    `city_name` String,

    `city_key` Int64,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 city_key)
SETTINGS index_granularity = 1024;

CREATE TABLE dim_brands
(

    `company_key` Int64,

    `brand_key` Int64,

    `brand_name` String,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 brand_key)
SETTINGS index_granularity = 1024;

CREATE TABLE dim_customer_type
(

    `company_key` Int64,

    `segment_type_key` Int64,

    `segment_type_name` String,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 segment_type_key)
SETTINGS index_granularity = 1024;

CREATE TABLE dim_locations
(

    `company_key` Int64,

    `city_key` Int64,

    `district_key` Int64,

    `district_name` String,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 city_key,
 district_key)
SETTINGS index_granularity = 1024;

CREATE TABLE dim_products
(

    `company_key` Int64,

    `brand_key` Int64,

    `product_key` Int64,

    `product_name` String,

    `product_cover_key` Int64,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 brand_key,
 product_key)
SETTINGS index_granularity = 1024;

CREATE TABLE dim_segment
(

    `company_key` Int64,

    `segment_type_key` Int64,

    `segment_key` Int64,

    `segment_name` String,

    `segment_unique_key` Int64,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 segment_unique_key,
 segment_type_key)
SETTINGS index_granularity = 1024;

CREATE TABLE dim_users
(

    `company_key` Int64,

    `user_key` Int64,

    `user_name` String,

    `user_position_key` Int64,

    `user_manager_key` Int64,

    `partition_id` Date
)
ENGINE = MergeTree
PRIMARY KEY company_key
ORDER BY (company_key,
 user_key)
SETTINGS index_granularity = 1024;

CREATE TABLE poc_dwh.dw_sd_sales_detail
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

CREATE TABLE poc_dwh.dw_sd_pharmacy_user
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