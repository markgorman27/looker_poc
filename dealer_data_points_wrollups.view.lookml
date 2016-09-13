- view: dealer_data_points_wrollups
  sql_table_name: spaautoupdate_deliver.dealer_data_points_wrollups2
  fields:

  - dimension: area
    type: string
    sql: ${TABLE}.area

  - dimension: computeperiod
    type: string
    sql: ${TABLE}.computeperiod

  - dimension: datapoint
    type: string
    sql: ${TABLE}.datapoint

  - dimension: dealer
    type: string
    sql: ${TABLE}.dealer

  - dimension: district
    type: string
    sql: ${TABLE}.district

  - dimension: division
    type: string
    sql: ${TABLE}.division

  - dimension: fromperiod
    type: string
    sql: ${TABLE}.fromperiod

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension: samplesize
    type: number
    sql: ${TABLE}.samplesize

  - dimension: score
    type: number
    sql: ${TABLE}.score

  - dimension: toperiod
    type: string
    sql: ${TABLE}.toperiod

  - measure: count
    type: count
    drill_fields: []

