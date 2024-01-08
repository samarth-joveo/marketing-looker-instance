# The name of this view in Looker is "Og"
view: og {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."OG" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _airbyte_extracted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_AIRBYTE_EXTRACTED_AT" AS TIMESTAMP_NTZ) ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Airbyte Meta" in Explore.

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

  dimension: previous_occupation {
    type: string
    sql: ${TABLE}."PREVIOUS_OCCUPATION" ;;
  }

  measure: transitions {
    type: sum
    sql: ${TABLE}."TRANSITIONS" ;;
  }
  measure: count {
    type: count
  }
}
