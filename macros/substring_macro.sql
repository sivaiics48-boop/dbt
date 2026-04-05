{% macro substring_macro(column,n) -%}
  substr({{ column }},1,{{ n }})
{%- endmacro %}  