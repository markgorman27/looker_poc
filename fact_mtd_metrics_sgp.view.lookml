- view: fact_mtd_metrics_sgp
  sql_table_name: spaautoupdate_deliver.fact_mtd_metrics_sgp
  fields:

  - dimension: area
    type: string
    sql: ${TABLE}.area

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

  - measure: sales_growth_program_as_pct_of_goal_score
    label: 'SALES ATTAINMENT AS % OF MONTHLY GOAL'
    type: max
    value_format: 0.0%
    sql: ${TABLE}.sales_growth_program_as_pct_of_goal_score

  - measure: sales_growth_program_as_pct_of_goal_score_area
    type: max
    sql: ${TABLE}.sales_growth_program_as_pct_of_goal_score_area

  - measure: sales_growth_program_as_pct_of_goal_score_district
    type: max
    sql: ${TABLE}.sales_growth_program_as_pct_of_goal_score_district

  - measure: sales_growth_program_as_pct_of_goal_score_division
    type: max
    sql: ${TABLE}.sales_growth_program_as_pct_of_goal_score_division

  - measure: sales_growth_program_as_pct_of_goal_score_region
    type: max
    sql: ${TABLE}.sales_growth_program_as_pct_of_goal_score_region

  - measure: sales_growth_program_objs_score
    label: 'SALES ATTAINMENT OBJECTIVE'
    type: max
    sql: ${TABLE}.sales_growth_program_objs_score

  - measure: sales_growth_program_objs_score_area
    type: max
    sql: ${TABLE}.sales_growth_program_objs_score_area

  - measure: sales_growth_program_objs_score_district
    type: max
    sql: ${TABLE}.sales_growth_program_objs_score_district

  - measure: sales_growth_program_objs_score_division
    type: max
    sql: ${TABLE}.sales_growth_program_objs_score_division

  - measure: sales_growth_program_objs_score_region
    type: max
    sql: ${TABLE}.sales_growth_program_objs_score_region

  - measure: sales_growth_program_score
    label: 'SALES ATTAINMENT'
    type: max
    sql: ${TABLE}.sales_growth_program_score

  - measure: sales_growth_program_score_area
    type: max
    sql: ${TABLE}.sales_growth_program_score_area

  - measure: sales_growth_program_score_district
    type: max
    sql: ${TABLE}.sales_growth_program_score_district

  - measure: sales_growth_program_score_division
    type: max
    sql: ${TABLE}.sales_growth_program_score_division

  - measure: sales_growth_program_score_region
    type: max
    sql: ${TABLE}.sales_growth_program_score_region

  - dimension: toperiod
    type: string
    sql: ${TABLE}.toperiod

