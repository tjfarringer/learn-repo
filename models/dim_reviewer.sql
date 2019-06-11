{{ config(materialized='table') }}

select reviewer_name
      ,min(date) as first_review_date
      ,max(date) as last_review_date
from learn.source_data.reviews
group by 1
