- view: accessories_dim_model
  sql_table_name: tempqiong_clean.l_dim_model
  fields:

  - dimension: model
    type: string
    sql: ${TABLE}.model

  - dimension: model_brand
    type: string
    sql: ${TABLE}.model_brand

  - dimension: model_name
    type: string
    sql: ${TABLE}.model_name

  - measure: count
    type: count
    drill_fields: [model_name]

