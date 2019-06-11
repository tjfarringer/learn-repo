{{ config(materialized='table') }}

select
       host_id
      ,host_name
      ,host_since
      ,host_location
      ,is_superhost
from learn.source_data.listings
