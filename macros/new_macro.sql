{%- macro clone_db() -%}
    {% set sql %}
        DROP DATABASE IF EXISTS ci_jyeo;
        CREATE DATABASE ci_jyeo CLONE PRD;
        -- GRANT ALL ON DATABASE ci_jyeo TO ROLE transformer;
    {% endset %}
    {% do log("Cloning database 'PRD' to 'ci_jyeo'", info=True) %}
    {% do run_query(sql) %}
    {% do log("Databse cloning commpleted", info=True) %}
{%- endmacro -%}

{%- macro drop_db() -%}
    {% set sql %}
        DROP DATABASE IF EXISTS ci_jyeo;
    {% endset %}
    {% do log("Dropping database 'ci_jyeo'", info=True) %}
    {% do run_query(sql) %}
    {% do log("Databse dropped", info=True) %}
{%- endmacro -%}