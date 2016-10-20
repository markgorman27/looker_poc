- view: fact_3mo_metrics_waggs
  sql_table_name: spaautoupdate_deliver.fact_3mo_metrics_waggs
  fields:

  - dimension: entity_pk
    hidden: true
    type: number
    sql: ${TABLE}.entity_pk

  - dimension: fromperiod
    type: date
    sql: ${TABLE}.fromperiod

  - dimension: ncsinsi_score_entity_raw
    hidden: true
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE"

  - dimension: ncsinsi_score_district_raw
    hidden: true
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_DISTRICT"
    
  - dimension: ncsinsi_score_area_raw
    hidden: true
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_AREA"
    
  - dimension: ncsinsi_score_region_raw
    hidden: true
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_REGION"
    
  - dimension: ncsinsi_score_division_raw
    hidden: true
    type: number
    sql: ${TABLE}."NCSI-NSI_SCORE_DIVISION"

  - dimension: toperiod
    type: date
    sql: ${TABLE}.toperiod
    
  - filter: entity_geo_level
    suggestions: ['entity', 'district', 'area', 'region', 'division']
    
  - filter: entity_geo_comparison_level
    suggestions: ['entity', 'district', 'area', 'region', 'division']

  - measure: count
    type: count
    drill_fields: []
    
  - dimension: entity_geo_compare_to
    sql: |
      CASE
      WHEN {% condition entity_geo_comparison_level %} 'entity' {% endcondition %}
      THEN dim_entity.entity
      
      WHEN {% condition entity_geo_comparison_level %} 'district' {% endcondition %}
      THEN dim_entity.district
      
      WHEN {% condition entity_geo_comparison_level %} 'area' {% endcondition %}
      THEN dim_entity.area
      
      WHEN {% condition entity_geo_comparison_level %} 'region' {% endcondition %}
      THEN dim_entity.region
      
      WHEN {% condition entity_geo_comparison_level %} 'division' {% endcondition %}
      THEN dim_entity.division
      
      END
      
  - measure: ncsinsi_score_noncru
    type: max  #could've chosen min instead... this is for non-computational rollup illustration
    sql: |
      CASE
      WHEN {% condition entity_geo_level %} 'entity' {% endcondition %}
      THEN ${ncsinsi_score_entity_raw}
      
      WHEN {% condition entity_geo_level %} 'district' {% endcondition %}
      THEN ${ncsinsi_score_district_raw}
      
      WHEN {% condition entity_geo_level %} 'area' {% endcondition %}
      THEN ${ncsinsi_score_area_raw}
      
      WHEN {% condition entity_geo_level %} 'region' {% endcondition %}
      THEN ${ncsinsi_score_region_raw}
      
      WHEN {% condition entity_geo_level %} 'division' {% endcondition %}
      THEN ${ncsinsi_score_division_raw}
      
      END
    drill_fields: []
    
  - measure: ncsinsi_score_cru
    type: sum  #this is for computational rollup illustration
    sql: ${ncsinsi_score_entity_raw}
    drill_fields: []
    
  - measure: ncsinsi_comparison_score_noncru
    type: max  #could've chosen min instead.. this is for non-computational rollup illustration
    sql: |
      CASE
      WHEN {% condition entity_geo_comparison_level %} 'entity' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.entity
      THEN ${ncsinsi_score_entity_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'district' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.district
      THEN ${ncsinsi_score_district_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'area' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.area
      THEN ${ncsinsi_score_area_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'region' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.region
      THEN ${ncsinsi_score_region_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'division' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.division
      THEN ${ncsinsi_score_division_raw}
      
      END
    drill_fields: []
    
  - measure: ncsinsi_comparison_score_cru
    type: sum  #this is for computational rollup illustration
    sql: |
      CASE
      WHEN {% condition entity_geo_comparison_level %} 'entity' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.entity
      THEN ${ncsinsi_score_entity_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'district' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.district
      THEN ${ncsinsi_score_entity_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'area' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.area
      THEN ${ncsinsi_score_entity_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'region' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.region
      THEN ${ncsinsi_score_entity_raw}
      
      WHEN {% condition entity_geo_comparison_level %} 'division' {% endcondition %}
       AND ${entity_geo_compare_to} = dim_entity.division
      THEN ${ncsinsi_score_entity_raw}
      
      END
    drill_fields: []

