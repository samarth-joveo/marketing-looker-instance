# The name of this view in Looker is "U Cpa"
view: u_cpa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."U_CPA" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " 1 Page Apply" in Explore.

  measure: 1_page_apply {
    type: average
    sql: ${TABLE}."_1_PAGE_APPLY" ;;
  }

  measure: 2_page_apply {
    type: average
    sql: ${TABLE}."_2_PAGE_APPLY" ;;
  }

  measure: 3_page_apply {
    type: average
    sql: ${TABLE}."_3_PAGE_APPLY" ;;
  }

  measure: 4_page_apply {
    type: average
    sql: ${TABLE}."_4_PAGE_APPLY" ;;
  }

  measure: 5_page_apply {
    type: average
    sql: ${TABLE}."_5_PAGE_APPLY" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _airbyte_extracted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_EXTRACTED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: _airbyte_meta {
    type: string
    sql: ${TABLE}."_AIRBYTE_META" ;;
  }

  dimension: _airbyte_raw_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_RAW_ID" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  measure: easy_apply {
    type: average
    sql: ${TABLE}."EASY_APPLY" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  measure: unique_postings {
    type: sum
    sql: ${TABLE}."UNIQUE_POSTINGS" ;;
  }
  measure: count {
    type: count
  }
}
