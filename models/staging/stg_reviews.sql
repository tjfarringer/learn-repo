
with source as (

    select * from {{ source('source_data', 'reviews') }}

),

renamed as (

    select

        id as review_id,
        review as reviewer_id,
        listing_id,
        reviewer_name,
        comments,
        date as review_date

    from source

)

select * from renamed
