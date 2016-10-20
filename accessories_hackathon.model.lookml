- connection: nna-poc-pg1

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

- explore: accessories_fact_mtd_model_metrics
  joins:
    - join: accessories_dim_model
      sql_on: ${accessories_fact_mtd_model_metrics.model} = ${accessories_dim_model.model}
      relationship: many_to_one
      type: inner      
    - join: dim_entity
      sql_on: ${accessories_fact_mtd_model_metrics.entity_pk} = ${dim_entity.entity_pk}
      relationship: many_to_one
      type: inner
    - join: dim_time
      sql_on: ${accessories_fact_mtd_model_metrics.toperiod} = ${dim_time.calendardate}
      relationship: many_to_one
      type: inner
      
- explore: accessories_fact_mtd_model_part_metrics
  joins:
    - join: accessories_dim_model
      sql_on: ${accessories_fact_mtd_model_part_metrics.model} = ${accessories_dim_model.model}
      relationship: many_to_one
      type: inner      
    - join: accessories_dim_part
      sql_on: ${accessories_fact_mtd_model_part_metrics.part_number} = ${accessories_dim_part.part_number}
      relationship: many_to_one
      type: inner           
    - join: dim_entity
      sql_on: ${accessories_fact_mtd_model_part_metrics.entity_pk} = ${dim_entity.entity_pk}
      relationship: many_to_one
      type: inner
    - join: dim_time
      sql_on: ${accessories_fact_mtd_model_part_metrics.toperiod} = ${dim_time.calendardate}
      relationship: many_to_one
      type: inner    
