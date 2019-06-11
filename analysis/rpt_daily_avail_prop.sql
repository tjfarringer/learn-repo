with daily_avail as (

  select * from {{ref('fct_daily_listing_avail')}}

),

{% call statement('get_property_types', fetch_result = True) %}

    select distinct property_type
    from {{ref('fct_daily_listing_avail')}}

{% endcall %}

{% set property_type_table = load_result('get_property_types').table %}


{#% set properties = ['Castle', 'Hostel', 'Villa'] %#}


aggregated as (

  select

  date_day,

  {% for row in property_type_table %}

    {% set property_type_og = row.property_type %}
    {% set property_type_clean = clean_property_type(property_type_og) %}

  sum(case when property_type = '{{row.property_type}}' then 1 else 0 end) as num_avail_{{row.property_type}}

  {% if not loop.last %} , {% endif %}

  {% endfor %}

  from daily_avail
  group by 1

)

select * from aggregated
