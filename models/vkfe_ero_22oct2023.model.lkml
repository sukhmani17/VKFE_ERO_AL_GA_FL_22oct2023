# Define the database connection to be used for this model.
connection: "vkfe_ero_22oct2023"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: vkfe_ero_22oct2023_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vkfe_ero_22oct2023_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Vkfe Ero 22oct2023"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: vkfe_ero_al_ga_fl_zip_code_city {}

explore: ero_with_fieldnames {}

explore: vkfe_ero_al_ga_fl {}

explore: vkfe_ero_ca {}

explore: vkfe_ero_ca_zip_code_city {}

explore: ppp_ppx_pps_final_29_jan2023_v3_url {}

explore: _vkfe_ero_wa_zip_code_city {}

explore: _vkfe_ero_or_zip_code_city {}

explore: vkfe_ero_nv {}

explore: vkfe_ero_wa {}

explore: vkfe_ero_or {}

explore: vkfe_ero_nv_zip_code_city {}

