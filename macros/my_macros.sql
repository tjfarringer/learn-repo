

{% macro clean_property_type(property_type) %}

  {% set property_type_clean = property_type |
            lower | replace(' ', '_') | replace('/', '_')
  %}

  {{ return(property_type_clean) }}

{% endmacro %}



{% macro group_by_macro(x) %}

  GROUP BY

  {% for i in range(1, x+1) %}
    {{ i }}
  {% if not loop.last %} , {% endif %}

  {% endfor %}

{% endmacro %}
