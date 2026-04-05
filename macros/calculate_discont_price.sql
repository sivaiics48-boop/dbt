{% macro calculate_discount_price(price_column,discount_column) -%}
    {{ price_column }} * (1-{{ discount_column }}/100)
{%- endmacro %}    