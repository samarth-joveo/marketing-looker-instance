# The name of this view in Looker is "Icp Sheet5"
view: icp_sheet5 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."ICP_SHEET5" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "1page Apply" in Explore.

  dimension: 1page_apply {
    type: string
    sql: ${TABLE}."1-Page Apply" ;;
  }

  dimension: 2page_apply {
    type: string
    sql: ${TABLE}."2-Page Apply" ;;
  }

  dimension: 3page_apply {
    type: string
    sql: ${TABLE}."3-Page Apply" ;;
  }

  dimension: 4page_apply {
    type: string
    sql: ${TABLE}."4-Page Apply" ;;
  }

  dimension: 5_or_more {
    type: string
    sql: ${TABLE}."5 or more" ;;
  }

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_AB_ID" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _airbyte_emitted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_EMITTED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: _airbyte_icp_sheet5_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_ICP_SHEET5_HASHID" ;;
  }

  dimension_group: _airbyte_normalized {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_NORMALIZED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: easy_apply {
    type: string
    sql: ${TABLE}."Easy Apply" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."LOCATION" ;;
  }
  measure: count {
    type: count
  }
}
