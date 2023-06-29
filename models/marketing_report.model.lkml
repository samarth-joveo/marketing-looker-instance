# Define the database connection to be used for this model.
connection: "idp-marketing"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: marketing_report_default_datagroup {
   sql_trigger: SELECT count(*) FROM "ANALYTICS"."MODELLED"."R1";;
  max_cache_age: "1 hour"
}

persist_with: marketing_report_default_datagroup



explore: r1 {}

explore: r10 {}
explore: r2 {}

explore: r3 {}

explore: r4 {}

explore: r5 {}

explore: r6 {}

explore: r7 {}

explore: r9 {}

explore: sankey_sample {}
