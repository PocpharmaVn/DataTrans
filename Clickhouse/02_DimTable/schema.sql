DROP TABLE IF EXISTS dim_areas;
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

DROP TABLE IF EXISTS dim_brands;
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

DROP TABLE IF EXISTS dim_customer_type;
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

DROP TABLE IF EXISTS dim_locations;
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

DROP TABLE IF EXISTS dim_products;
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

DROP TABLE IF EXISTS dim_segment;
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

DROP TABLE IF EXISTS dim_users;
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