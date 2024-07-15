{% macro generate_schema_name(custom_schema_name=none, node=none) -%}
    {%- set default_schema = target.schema -%}
    {%- if target.name == 'CI' -%}
        ci_jyeo
    {%- else -%}
        {{ default_schema }}
    {%- endif -%}
{%- endmacro %}