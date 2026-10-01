{% macro format_amount(column_name, decimal_places=2) %}
    round( {{ column_name}}, {{ decimal_places }} )
{% endmacro %}

 