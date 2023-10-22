# The name of this view in Looker is "Ero with Fieldnames"
view: ero_with_fieldnames {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `VKFE_ERO_Looker.ERO_with_fieldnames` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
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
  measure: count {
    type: count
    drill_fields: [middle_name, first_name, last_name]
  }
}
