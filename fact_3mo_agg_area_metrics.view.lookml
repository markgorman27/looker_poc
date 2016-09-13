- view: fact_3mo_agg_area_metrics
  sql_table_name: spaautoupdate_deliver.fact_3mo_agg_area_metrics2
  fields:

  - dimension: area
    type: string
    sql: ${TABLE}.area

  - dimension: calendarmonth
    type: number
    sql: ${TABLE}.calendarmonth

  - dimension: calendarmonthday
    type: number
    sql: ${TABLE}.calendarmonthday

  - dimension: calendarquarter
    type: number
    sql: ${TABLE}.calendarquarter

  - dimension: calendaryear
    type: number
    sql: ${TABLE}.calendaryear

  - dimension: division
    type: string
    sql: ${TABLE}.division

  - dimension_group: fromperiod
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.fromperiod

  - dimension: ncsinsi_score
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE"

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension: row_count
    type: number
    sql: ${TABLE}.row_count

  - dimension_group: toperiod
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.toperiod

  - measure: count
    type: count
    drill_fields: []

