# The name of this view in Looker is "Vkfe Ero Al Ga Fl"
view: vkfe_ero_al_ga_fl {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `VKFE_ERO_Looker.VKFE_ERO_AL_GA_FL` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: borrower_address {
    type: string
    sql: ${TABLE}.BorrowerAddress ;;
  }

  dimension: borrower_city {
    type: string
    sql: ${TABLE}.BorrowerCity ;;
  }

  dimension: borrower_name {
    type: string
    sql: ${TABLE}.BorrowerName ;;
  }

  dimension: borrower_state {
    type: string
    sql: ${TABLE}.BorrowerState ;;
  }

  dimension: borrower_zip {
    type: string
    sql: ${TABLE}.BorrowerZip ;;
  }

  dimension: c12 {
    type: string
    sql: ${TABLE}.c12 ;;
  }

  dimension: c13 {
    type: string
    sql: ${TABLE}.c13 ;;
  }

  dimension: c14 {
    type: string
    sql: ${TABLE}.c14 ;;
  }

  dimension: c15 {
    type: string
    sql: ${TABLE}.c15 ;;
  }

  dimension: c7 {
    type: string
    sql: ${TABLE}.c7 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.First_Name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.Last_Name ;;
  }

  dimension: loan_number {
    type: number
    sql: ${TABLE}.LoanNumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_loan_number {
    type: sum
    sql: ${loan_number} ;;  }
  measure: average_loan_number {
    type: average
    sql: ${loan_number} ;;  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.Middle_Name ;;
  }

  dimension: name_of_business {
    type: string
    sql: ${TABLE}.Name_of_business ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: suite {
    type: string
    sql: ${TABLE}.Suite ;;
  }

  dimension: telephone {
    type: string
    sql: ${TABLE}.Telephone ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  dimension: zip_5 {
    type: string
    sql: ${TABLE}.zip_5 ;;
  }
  measure: count {
    type: count
    drill_fields: [middle_name, first_name, last_name, borrower_name]
  }
}
