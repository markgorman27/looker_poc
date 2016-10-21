- connection: nna-poc-pg1

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: fact_3mo_metrics
  joins:
    - join: dim_entity
      sql_on: ${fact_3mo_metrics.entity_pk} = ${dim_entity.entity_pk}
      relationship: many_to_one
      type: inner
    - join: dim_time
      sql_on: ${fact_3mo_metrics.toperiod} = ${dim_time.calendardate}
      relationship: many_to_one
      type: inner
      
- explore: fact_3mo_metrics_waggs
  joins:
    - join: dim_entity
      sql_on: ${fact_3mo_metrics_waggs.entity_pk} = ${dim_entity.entity_pk}
      relationship: many_to_one
      type: inner
    - join: dim_time
      sql_on: ${fact_3mo_metrics_waggs.toperiod} = ${dim_time.calendardate}
      relationship: many_to_one
      type: inner

# - explore: dealer_data_points_wrollups

# - explore: dealer_data_points_wrollups2

# - explore: dim_aged_day

# - explore: dim_aged_day2

# - explore: dim_entity

# - explore: dim_entity2

# - explore: dim_model

# - explore: dim_model2

# - explore: dim_time

# - explore: dim_time2

# - explore: fact_12mo_metrics

# - explore: fact_12mo_metrics2

# - explore: fact_1d_model_metrics

# - explore: fact_1d_model_metrics2

# - explore: fact_1mo_aged_day_model_metrics

# - explore: fact_1mo_aged_day_model_metrics2

# - explore: fact_1mo_agg_area_metrics

# - explore: fact_1mo_agg_area_metrics2

# - explore: fact_1mo_agg_district_metrics

# - explore: fact_1mo_agg_district_metrics2

# - explore: fact_1mo_agg_division_metrics

# - explore: fact_1mo_agg_division_metrics2

# - explore: fact_1mo_agg_region_metrics

# - explore: fact_1mo_agg_region_metrics2

# - explore: fact_1mo_metrics

# - explore: fact_1mo_metrics2

# - explore: fact_1mo_model_agg_region_metrics

# - explore: fact_1mo_model_agg_region_metrics2

# - explore: fact_3mo_agg_area_metrics

# - explore: fact_3mo_agg_area_metrics2

# - explore: fact_3mo_agg_district_metrics

# - explore: fact_3mo_agg_district_metrics2

# - explore: fact_3mo_agg_division_metrics

# - explore: fact_3mo_agg_division_metrics2

# - explore: fact_3mo_agg_region_metrics

# - explore: fact_3mo_agg_region_metrics2

# - explore: fact_3mo_metrics

# - explore: fact_cy_metrics

# - explore: fact_cy_metrics2

# - explore: fact_fy_metrics

# - explore: fact_fy_metrics2

# - explore: fact_mtd_agg_area_metrics

# - explore: fact_mtd_agg_area_metrics2

# - explore: fact_mtd_agg_district_metrics

# - explore: fact_mtd_agg_district_metrics2

# - explore: fact_mtd_agg_division_metrics

# - explore: fact_mtd_agg_division_metrics2

# - explore: fact_mtd_agg_region_metrics

# - explore: fact_mtd_agg_region_metrics2

# - explore: fact_mtd_metrics

# - explore: fact_mtd_metrics2

# - explore: fact_mtd_model_metrics

# - explore: fact_mtd_model_metrics2

# - explore: fact_qtd_metrics

# - explore: fact_qtd_metrics2

- explore: nmaccoverage

