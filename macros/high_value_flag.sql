{%macro high_value_flag(amount_column) -%}
 case 
    when {{ amount_column }} > 1000 then 'High'
    else 'Low'
  end
{%- endmacro %}  