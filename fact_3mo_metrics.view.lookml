- view: fact_3mo_metrics
  sql_table_name: spaautoupdate_deliver.fact_3mo_metrics2
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

  - dimension: notor_ncsinsi_all_samplesize
    type: number
    sql: ${TABLE}."NOTOR_NCSI-NSI_ALL_SAMPLESIZE"

  - dimension: notor_ncsinsi_all_score
    type: number
    sql: ${TABLE}."NOTOR_NCSI-NSI_ALL_SCORE"

  - dimension: notor_ncsinsi_nonotor_samplesize
    type: number
    sql: ${TABLE}."NOTOR_NCSI-NSI_NONOTOR_SAMPLESIZE"

  - dimension: notor_ncsinsi_nonotor_score
    type: number
    sql: ${TABLE}."NOTOR_NCSI-NSI_NONOTOR_SCORE"

  - dimension: notor_ncsinsi_samplesize
    type: number
    sql: ${TABLE}."NOTOR_NCSI-NSI_SAMPLESIZE"

  - dimension: notor_ncsinsi_score
    type: number
    sql: ${TABLE}."NOTOR_NCSI-NSI_SCORE"

  - dimension: notor_nssinpi_all_samplesize
    type: number
    sql: ${TABLE}."NOTOR_NSSI-NPI_ALL_SAMPLESIZE"

  - dimension: notor_nssinpi_all_score
    type: number
    sql: ${TABLE}."NOTOR_NSSI-NPI_ALL_SCORE"

  - dimension: notor_nssinpi_nonotor_samplesize
    type: number
    sql: ${TABLE}."NOTOR_NSSI-NPI_NONOTOR_SAMPLESIZE"

  - dimension: notor_nssinpi_nonotor_score
    type: number
    sql: ${TABLE}."NOTOR_NSSI-NPI_NONOTOR_SCORE"

  - dimension: notor_nssinpi_samplesize
    type: number
    sql: ${TABLE}."NOTOR_NSSI-NPI_SAMPLESIZE"

  - dimension: notor_nssinpi_score
    type: number
    sql: ${TABLE}."NOTOR_NSSI-NPI_SCORE"

  - dimension: toperiod
    type: date
    sql: ${TABLE}.toperiod

  - measure: count
    type: count
    drill_fields: []

