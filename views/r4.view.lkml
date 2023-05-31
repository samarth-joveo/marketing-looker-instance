# The name of this view in Looker is "R4"
view: r4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MODELLED"."R4"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Airbyte Ab ID" in Explore.

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}."_AIRBYTE_AB_ID" ;;
  }

  parameter: parameter_value {
    type: unquoted
    allowed_value: {
      label: "Job Postings / Total Employment"
      value: "j"
    }
    allowed_value: {
      label: "Unique Job Postings"
      value: "u"
    }
    allowed_value: {
      label: "Total Employment"
      value: "t"
    }

  }
  measure: Value {
    label_from_parameter: parameter_value
    type: number
    sql:{% if parameter_value._parameter_value == 'j' %}
          sum(${job_postings_total_employment})
          {% elsif parameter_value._parameter_value == 'u' %}
          sum(${unique_job_postings})
          {% else %}
          sum(${total_employment})
          {% endif %};;
  }

  dimension_group: _airbyte_emitted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_AIRBYTE_EMITTED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: _airbyte_normalized {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_AIRBYTE_NORMALIZED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: _airbyte_r4_hashid {
    type: string
    sql: ${TABLE}."_AIRBYTE_R4_HASHID" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: job_postings_total_employment {
    label: "Job Postings / Total Employment"
    type: number
    sql: ${TABLE}."Job postings/total employment" ;;
  }
  measure: above_national_percent {
    label: "Above National %"
    type: number
    sql: (0.84-sum(${job_postings_total_employment}))/sum(${job_postings_total_employment}) ;;
    value_format: "0.00%"
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}."STATE" ;;
  }

  dimension: total_employment {
    type: number
    sql: ${TABLE}."Total employment" ;;
  }

  dimension: unique_job_postings {
    type: number
    sql: ${TABLE}."Unique job postings" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
