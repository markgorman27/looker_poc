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
    links: 
      - label: "View Trend"
        url: "https://looker-poc-app1.square-root.com:9999/embed/query/sales_growth_program/fact_mtd_metrics_sgp?fields=fact_mtd_metrics_sgp.dealer,fact_mtd_metrics_sgp.sales_growth_program_as_pct_of_goal_score,fact_mtd_metrics_sgp.toperiod&f[fact_mtd_metrics_sgp.dealer]={{ dealer }}&sorts=fact_mtd_metrics_sgp.toperiod+desc&limit=13&column_limit=50&query_timezone=America%2FChicago&vis=%7B%22type%22%3A%22looker_column%22%7D&filter_config=%7B%22fact_mtd_metrics_sgp.dealer%22%3A%5B%7B%22type%22%3A%22%3D%22%2C%22values%22%3A%5B%7B%22constant%22%3A%2201016%22%2C%22tmp%22%3A%2201016%22%7D%2C%7B%7D%5D%2C%22id%22%3A0%2C%22error%22%3Afalse%7D%5D%7D&show=data%2Cfilter%2Cvis%2Cfields&origin=share-expanded"

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

