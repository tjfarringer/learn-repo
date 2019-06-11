{{ config(materialized='view') }}

select
listing_id
,nullif(replace(split_part(price, '$', 2), ',', ''), '')::float as price
,available
,date
from learn.source_data.listing_history
