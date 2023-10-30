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

explore: el_sheet1 {}

explore: el_sheet10 {}
explore: el_sheet2 {}

explore: el_sheet3 {}

explore: el_sheet4 {}

explore: el_sheet5 {}

explore: el_sheet6 {}

explore: el_sheet7 {}

explore: el_sheet8 {}

explore: el_sheet9 {}

explore: st_sheet1 {}

explore: st_sheet10 {}
explore: st_sheet2 {}

explore: st_sheet3 {}

explore: st_sheet4 {}

explore: st_sheet5 {}

explore: st_sheet6 {}

explore: st_sheet7 {}

explore: st_sheet8 {}

explore: st_sheet9 {}

explore: csr_sheet1 {}

explore: csr_sheet10 {}
explore: csr_sheet2 {}

explore: csr_sheet3 {}

explore: csr_sheet4 {}

explore: csr_sheet5 {}

explore: csr_sheet6 {}

explore: csr_sheet7 {}

explore: csr_sheet8 {}

explore: csr_sheet9 {}

explore: fpw_sheet1 {}

explore: fpw_sheet10 {}
explore: fpw_sheet2 {}

explore: fpw_sheet3 {}

explore: fpw_sheet4 {}

explore: fpw_sheet5 {}

explore: fpw_sheet6 {}

explore: fpw_sheet7 {}

explore: fpw_sheet8 {}

explore: fpw_sheet9 {}

explore: lpn_sheet1 {}

explore: lpn_sheet10 {}
explore: lpn_sheet2 {}

explore: lpn_sheet3 {}

explore: lpn_sheet4 {}

explore: lpn_sheet5 {}

explore: lpn_sheet6 {}

explore: lpn_sheet7 {}

explore: lpn_sheet8 {}

explore: lpn_sheet9 {}

explore: icp_sheet1 {}

explore: icp_sheet10 {}
explore: icp_sheet2 {}

explore: icp_sheet3 {}

explore: icp_sheet4 {}

explore: icp_sheet5 {}

explore: icp_sheet6 {}

explore: icp_sheet7 {}

explore: icp_sheet8 {}

explore: icp_sheet9 {}

explore: na_sheet1 {}

explore: na_sheet10 {}
explore: na_sheet2 {}

explore: na_sheet3 {}

explore: na_sheet4 {}

explore: na_sheet5 {}

explore: na_sheet6 {}

explore: na_sheet7 {}

explore: na_sheet8 {}

explore: na_sheet9 {}

explore: wh_sheet1 {}

explore: wh_sheet10 {}
explore: wh_sheet2 {}

explore: wh_sheet3 {}

explore: wh_sheet4 {}

explore: wh_sheet5 {}

explore: wh_sheet6 {}

explore: wh_sheet7 {}

explore: wh_sheet8 {}

explore: wh_sheet9 {}
