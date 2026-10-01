{% macro round_decimal(column_name, decimal_places=2) %}
    ROUND( {{column_name }}, {{ decimal_places }} )
{% endmacro %}