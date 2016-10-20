- view: accessories_dim_part
  sql_table_name: tempqiong_clean.l_dim_part
  fields:

  - dimension: part_channel
    type: string
    sql: ${TABLE}.part_channel

  - dimension: part_number
    type: string
    sql: ${TABLE}.part_number

  - dimension: partdescription_clean
    type: string
    sql: ${TABLE}.partdescription_clean

  - measure: count
    type: count
    drill_fields: []

