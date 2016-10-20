- view: accessories_fact_mtd_model_metrics
  sql_table_name: tempqiong_clean.l_fact_mtd_model_metrics
  fields:

  - measure: acc_pnur_samplesize_raw
    hidden: true
    type: sum
    sql: ${TABLE}."ACC_PNUR_SAMPLESIZE"

  - measure: acc_pnur_score_raw
    hidden: true
    type: sum
    sql: ${TABLE}."ACC_PNUR_SCORE"

  - dimension: entity
    type: string
    sql: ${TABLE}.entity

  - dimension: entity_pk
    type: number
    sql: ${TABLE}.entity_pk

  - dimension: fromperiod
    type: date
    sql: ${TABLE}.fromperiod

  - dimension: model
    type: string
    sql: ${TABLE}.model

  - dimension: toperiod
    type: date
    sql: ${TABLE}.toperiod
    
  - measure: acc_pnur_score
    type: number
    sql: case when ${acc_pnur_samplesize_raw} != 0 then ${acc_pnur_score_raw}/${acc_pnur_samplesize_raw} end

