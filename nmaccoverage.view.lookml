- view: nmaccoverage
  sql_table_name: tmp_killeen.nmaccoverage
  fields:

  - dimension_group: date
    type: time
    timeframes: [date]
    convert_tz: false
    sql: ${TABLE}.date

  - measure: denominator
    type: max
    sql: ${TABLE}.denominator

  - measure: onedaycoverage
    type: max
    sql: ${TABLE}.onedaycoverage

  - measure: sevendaycoverage
    type: max
    sql: ${TABLE}.sevendaycoverage

