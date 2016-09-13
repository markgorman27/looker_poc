- view: dim_entity
  sql_table_name: spaautoupdate_deliver.dim_entity2
  fields:

  - dimension: area
    type: string
    sql: ${TABLE}.area

  - dimension: area_display_name
    type: string
    sql: ${TABLE}.area_display_name

  - dimension: area_name
    type: string
    sql: ${TABLE}.area_name

  - dimension_group: change
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.change_date

  - dimension: current_flag
    type: string
    sql: ${TABLE}.current_flag

  - dimension_group: dim_row_effective
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.dim_row_effective_date

  - dimension_group: dim_row_expiration
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.dim_row_expiration_date

  - dimension: display_name
    type: string
    sql: ${TABLE}.display_name

  - dimension: district
    type: string
    sql: ${TABLE}.district

  - dimension: district_display_name
    type: string
    sql: ${TABLE}.district_display_name

  - dimension: district_name
    type: string
    sql: ${TABLE}.district_name

  - dimension: division
    type: string
    sql: ${TABLE}.division

  - dimension: division_display_name
    type: string
    sql: ${TABLE}.division_display_name

  - dimension: division_name
    type: string
    sql: ${TABLE}.division_name

  - dimension: dummy_flag
    type: string
    sql: ${TABLE}.dummy_flag

  - dimension: entity
    type: string
    sql: ${TABLE}.entity

  - dimension: entity_pk
    type: number
    sql: ${TABLE}.entity_pk

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: notor_participation
    type: string
    sql: ${TABLE}.notor_participation

  - dimension: reason_text
    type: string
    sql: ${TABLE}.reason_text

  - dimension: region
    type: string
    sql: ${TABLE}.region

  - dimension: region_display_name
    type: string
    sql: ${TABLE}.region_display_name

  - dimension: region_name
    type: string
    sql: ${TABLE}.region_name

  - dimension: telephone
    type: string
    sql: ${TABLE}.telephone

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - name
    - region_name
    - division_name
    - area_name
    - district_name
    - division_display_name
    - region_display_name
    - area_display_name
    - district_display_name
    - display_name

