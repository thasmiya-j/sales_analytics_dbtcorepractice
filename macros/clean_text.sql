{% macro clean_text(column_name) %}
    TRIM({{ column_name }})
{% endmacro %}