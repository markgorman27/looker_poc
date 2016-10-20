- view: accessories_fact_mtd_model_part_metrics
  sql_table_name: tempqiong_clean.l_fact_mtd_model_part_metrics
  fields:

  - measure: acc_pnvr_samplesize_raw
    hidden: true
    type: sum
    sql: ${TABLE}."ACC_PNVR_SAMPLESIZE"

  - measure: acc_pnvr_score_raw
    hidden: true
    type: sum
    sql: ${TABLE}."ACC_PNVR_SCORE"

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

  - dimension: part_number
    type: string
    sql: ${TABLE}.part_number

  - dimension: toperiod
    type: date
    sql: ${TABLE}.toperiod
    
  - measure: acc_pnvr_score
    type: number
    sql: case when ${acc_pnvr_samplesize_raw} != 0 then ${acc_pnvr_score_raw}/${acc_pnvr_samplesize_raw} end

