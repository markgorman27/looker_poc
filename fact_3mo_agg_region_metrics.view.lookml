- view: fact_3mo_agg_region_metrics
  sql_table_name: spaautoupdate_deliver.fact_3mo_agg_region_metrics2
  fields:

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

  - dimension: fromperiod
    type: date
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

  - dimension: toperiod
    type: date
    sql: ${TABLE}.toperiod

  - measure: count
    type: count
    drill_fields: []

