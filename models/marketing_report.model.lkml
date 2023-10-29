# Define the database connection to be used for this model.
connection: "idp-marketing"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: marketing_report_default_datagroup {
   #sql_trigger: SELECT count(*) FROM "ANALYTICS"."MODELLED"."R1";;
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

explore: sheet1 {}

explore: sheet10 {}
explore: sheet2 {}

explore: sheet3 {}

explore: sheet4 {}

explore: sheet5 {}

explore: sheet6 {}

explore: sheet7 {}

explore: sheet8 {}

explore: sheet9 {}

explore: bk_sheet1 {}

explore: bk_sheet10 {}
explore: bk_sheet2 {}

explore: bk_sheet3 {}

explore: bk_sheet4 {}

explore: bk_sheet5 {}

explore: bk_sheet6 {}

explore: bk_sheet7 {}

explore: bk_sheet8 {}

explore: bk_sheet9 {}

explore: cl_sheet1 {}

explore: cl_sheet10 {}
explore: cl_sheet2 {}

explore: clsheet3 {}

explore: cl_sheet4 {}

explore: cl_sheet5 {}

explore: cl_sheet6 {}

explore: cl_sheet7 {}

explore: cl_sheet8 {}

explore: cl_sheet9 {}

explore: dd_sheet1 {}

explore: dd_sheet10 {}
explore: dd_sheet2 {}

explore: dd_sheet3 {}

explore: dd_sheet4 {}

explore: dd_sheet5 {}

explore: dd_sheet6 {}

explore: dd_sheet7 {}

explore: dd_sheet8 {}

explore: dd_sheet9 {}
