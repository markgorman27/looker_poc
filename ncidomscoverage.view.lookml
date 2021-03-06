- view: ncidomscoverage
  sql_table_name: tmp_killeen.ncidomscoverage
  fields:

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: denominator
    type: number
    sql: ${TABLE}.denominator

  - dimension: onedaycoverage
    type: number
    sql: ${TABLE}.onedaycoverage

  - dimension: sevendaycoverage
    type: number
    sql: ${TABLE}.sevendaycoverage

  - measure: count
    type: count
    drill_fields: []

