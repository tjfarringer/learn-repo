{{ config(materialized='view') }}

select
,acceptance_rate
,access
,accommodates
,amenities
,availability_30
,availability_365
,availability_60
,availability_90
,bathrooms
,bed_type
,bedrooms
,beds
,calendar_updated
,cancellation_policy
,city
,cleaning_fee
,country
,country_code
,description
,experiences_offered
,extra_people
,first_review
,guests_included
,has_availability
,host_about
,host_has_profile_pic
,host_id
,host_identity_verified
,host_location
,host_name
,host_neighbourhood
,host_since
,host_verifications
,house_rules
,id
,instant_bookable
,interaction
,is_business_travel_ready
,is_location_exact
,is_superhost
,jurisdiction_names
,last_review
,latitude
,license
,longitude
,market
,maximum_nights
,minimum_nights
,nullif(replace(split_part(monthly_price, '$', 2), ',', ''), '')::float as monthly_price
,name
,neighborhood_overview
,neighbourhood
,neighbourhood_cleansed
,neighbourhood_group_cleansed
,notes
,number_of_reviews
,nullif(replace(split_part(price, '$', 2), ',', ''), '')::float as price
,property_type
,require_guest_phone_verification
,require_guest_profile_picture
,requires_license
,response_rate
,response_time
,review_scores_accuracy
,review_scores_checkin
,review_scores_cleanliness
,review_scores_communication
,review_scores_location
,review_scores_rating
,review_scores_value
,room_type
,scrape
,security_deposit
,smart_location
,space
,square_feet
,state
,street
,summary
,transit
,nullif(replace(split_part(weekly_price, '$', 2), ',', ''), '')::float as weekly_price
,zipcode
from learn.source_data.listings
