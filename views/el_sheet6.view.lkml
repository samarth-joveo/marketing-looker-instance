# The name of this view in Looker is "El Sheet6"
view: el_sheet6 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."EL_SHEET6" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "1page Apply" in Explore.

  measure: 1_page_apply {
    type: average
    sql: ${TABLE}."1-page apply" ;;
  }

  measure: 2_page_apply {
    type: average
    sql: ${TABLE}."2-page apply" ;;
  }

  measure: 3_page_apply {
    type: average
    sql: ${TABLE}."3-page apply" ;;
  }

  measure: 4_page_apply {
    type: average
    sql: ${TABLE}."4-page apply" ;;
  }

  measure: 5_or_more {
    type: average
    sql: ${TABLE}."5 or more" ;;
  }

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_AB_ID" ;;
  }

  dimension: _airbyte_el_sheet6_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_EL_SHEET6_HASHID" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _airbyte_emitted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_EMITTED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: _airbyte_normalized {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_NORMALIZED_AT" AS TIMESTAMP_NTZ) ;;
  }

  measure: easy_apply {
    type: average
    sql: ${TABLE}."Easy apply" ;;
  }

  dimension: msa_name {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}."MSA Name" ;;
  }
  measure: count {
    type: count
    drill_fields: [msa_name]
  }
}
