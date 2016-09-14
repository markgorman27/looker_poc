- view: fact_3mo_metrics_waggs
  sql_table_name: spaautoupdate_deliver.fact_3mo_metrics_waggs
  fields:

  - dimension: entity
    type: string
    sql: ${TABLE}.entity

  - dimension: entity_pk
    type: number
    sql: ${TABLE}.entity_pk

  - dimension: fromperiod
    type: date
    sql: ${TABLE}.fromperiod

  - dimension: ncsinsi_score
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE"

  - dimension: ncsinsi_score_district
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_DISTRICT"
    
  - dimension: ncsinsi_score_area
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_AREA"
    
  - dimension: ncsinsi_score_region
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_REGION"
    
  - dimension: ncsinsi_score_division
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_DIVISION"

  - dimension: toperiod
    type: date
    sql: ${TABLE}.toperiod

  - measure: count
    type: count
    drill_fields: []

