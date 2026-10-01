{% macro clean_value(column_name, apply_trim=true, replace_null=false)  %}

    {% if apply_trim == true and replace_null == true %}

        COALESCE(TRIM({{ column_name }}), 'Unknown') 

    {% elif apply_trim == true and replace_null == false %}
        TRIM({{ column_name }})

    {% elif apply_trim == false and replace_null == true %}
        COALESCE({{ column_name }}, 'Unknown')

    {% else %}
        {{ column_name }}

        
    {% endif %}

{% endmacro %}