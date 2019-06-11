with listings as (

    select * from {{ref('stg_listings')}}

),

hosts as (

    select

        host_id,
        host_name,
        count(listing_id) as total_listings,

        avg(price) as avg_daily_listing_price,
        avg(weekly_price) as avg_weekly_listing_price,
        avg(monthly_price) as avg_monthly_listing_price,

        avg(review_scores_value) as avg_review_scores_value,
        avg(review_scores_location) as avg_review_scores_location,
        avg(review_scores_communication) as avg_review_scores_communication,
        avg(review_scores_checkin) as avg_review_scores_checkin,
        avg(review_scores_cleanliness) as avg_review_scores_cleanliness,
        avg(review_scores_accuracy) as avg_review_scores_accuracy,
        avg(review_scores_rating) as avg_review_scores_rating,
        sum(number_of_reviews) as total_reviews,

        max(last_review) as last_review_date,
        min(first_review) as first_review_date

    from listings
    group by 1,2

)

select * from hosts
