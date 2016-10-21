- view: ncicoverage
  sql_table_name: tmp_killeen.ncicoverage
  fields:

  - dimension_group: date
    type: time
    timeframes: [date]
    convert_tz: false
    sql: ${TABLE}.date

  - measure: denominator
    type: number
    sql: ${TABLE}.denominator

  - measure: onedaycoverage
    type: number
    sql: ${TABLE}.onedaycoverage

  - measure: sevendaycoverage
    type: number
    sql: ${TABLE}.sevendaycoverage


