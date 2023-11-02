# The name of this view in Looker is "Rsr Sheet4"
view: rsr_sheet4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."RSR_SHEET4" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "1page Apply" in Explore.

  measure: 1page_apply {
    type: average
    sql: ${TABLE}."1-Page Apply" ;;
  }

  measure: 2page_apply {
    type: average
    sql: ${TABLE}."2-Page Apply" ;;
  }

  measure: 3page_apply {
    type: average
    sql: ${TABLE}."3-Page Apply" ;;
  }

  measure: 4page_apply {
    type: average
    sql: ${TABLE}."4-Page Apply" ;;
  }

  measure: 5_or_more {
    type: average
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

  dimension_group: _airbyte_normalized {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_NORMALIZED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: _airbyte_rsr_sheet4_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_RSR_SHEET4_HASHID" ;;
  }

  measure: easy_apply {
    type: average
    sql: ${TABLE}."Easy Apply" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  measure: unique_postings {
    type: sum
    sql: ${TABLE}."Unique Postings" ;;
  }
  measure: count {
    type: count
  }
}
