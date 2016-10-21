- view: weird_report_ds4068
  sql_table_name: spaautoupdate_deliver.weird_report_ds4068
  fields:

  - dimension: filter_area
    type: string
    sql: ${TABLE}.filter_area

  - dimension: filter_district
    type: string
    sql: ${TABLE}.filter_district

  - dimension: filter_division
    type: string
    sql: ${TABLE}.filter_division

  - dimension: filter_region
    type: string
    sql: ${TABLE}.filter_region

  - dimension: node
    type: string
    sql: ${TABLE}.node

  - dimension: node_level
    type: string
    sql: ${TABLE}.node_level

  - measure: retail_sales
    type: max
    sql: ${TABLE}.retail_sales

  - measure: retail_sales_change
    type: max
    value_format: 0.0%
    sql: ${TABLE}.retail_sales_change

  - measure: retail_sales_py
    type: max
    sql: ${TABLE}.retail_sales_py

  - dimension: toperiod
    type: string
    sql: ${TABLE}.toperiod
    
  - dimension: node_level_order
    type: number
    sql: case when ${node_level} = 'District' then 0 
              when ${node_level} = 'Area' then 1 
              when ${node_level} = 'Region' then 2 
              when ${node_level} = 'Division' then 3 end 


