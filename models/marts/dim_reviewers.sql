with reviews as (

    select * from {{ref('stg_reviews')}}

),

reviewers as (

    select
        reviewer_id,
        reviewer_name,
        count(review_id) as total_reviews,
        count(distinct listing_id) as total_listings_visited,
        min(review_date) as first_review_date,
        max(review_date) as last_review_date

    from reviews
    group by 1,2

)

select * from reviewers
