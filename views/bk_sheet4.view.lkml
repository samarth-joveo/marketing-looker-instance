# The name of this view in Looker is "Bk Sheet4"
view: bk_sheet4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."BK_SHEET4" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "1page Apply" in Explore.

  dimension: 1page_apply {
    type: string
    sql: ${TABLE}."1-page apply" ;;
  }

  dimension: 2page_apply {
    type: string
    sql: ${TABLE}."2-page apply" ;;
  }

  dimension: 3page_apply {
    type: string
    sql: ${TABLE}."3-page apply" ;;
  }

  dimension: 4page_apply {
    type: string
    sql: ${TABLE}."4-page apply" ;;
  }

  dimension: 5_or_more {
    type: string
    sql: ${TABLE}."5 or more" ;;
  }

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_AB_ID" ;;
  }

  dimension: _airbyte_bk_sheet4_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_BK_SHEET4_HASHID" ;;
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

  dimension: easy_apply {
    type: string
    sql: ${TABLE}."Easy apply" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: unique_postings {
    type: string
    sql: ${TABLE}."Unique Postings" ;;
  }
  measure: count {
    type: count
  }
}