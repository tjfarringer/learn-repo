{{ config(materialized='view') }}

select
review
listing_id
id
comments
reviewer_name
date
from reviews
