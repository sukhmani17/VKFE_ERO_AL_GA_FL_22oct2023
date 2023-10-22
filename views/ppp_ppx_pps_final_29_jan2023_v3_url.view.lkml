# The name of this view in Looker is "Ppp Ppx Pps Final 29 Jan2023 V3 URL"
view: ppp_ppx_pps_final_29_jan2023_v3_url {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `VKFE_ERO_Looker.PPP_PPX_PPS_final_29Jan2023_v3_URL` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: begining {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Begining_Date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Borrower Address" in Explore.

  dimension: borrower_address {
    type: string
    sql: ${TABLE}.BorrowerAddress ;;
  }

  dimension: borrower_city {
    type: string
    sql: ${TABLE}.BorrowerCity ;;
  }

  dimension: borrower_city2 {
    type: string
    sql: ${TABLE}.BorrowerCity2 ;;
  }

  dimension: borrower_city2_pps {
    type: string
    sql: ${TABLE}.BorrowerCity2_PPS ;;
  }

  dimension: borrower_key {
    type: string
    sql: ${TABLE}.Borrower_key ;;
  }

  dimension: borrower_key_1 {
    type: string
    sql: ${TABLE}.Borrower_key_1 ;;
  }

  dimension: borrower_name {
    type: string
    sql: ${TABLE}.BorrowerName ;;
  }

  dimension: borrower_name_pps {
    type: string
    sql: ${TABLE}.BorrowerName_PPS ;;
  }

  dimension: borrower_state {
    type: string
    sql: ${TABLE}.BorrowerState ;;
  }

  dimension: borrower_zip {
    type: string
    sql: ${TABLE}.BorrowerZip ;;
  }

  dimension: business_age_description {
    type: string
    sql: ${TABLE}.BusinessAgeDescription ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.BusinessType ;;
  }

  dimension: cd {
    type: string
    sql: ${TABLE}.CD ;;
  }

  dimension: cd_1 {
    type: string
    sql: ${TABLE}.CD_1 ;;
  }

  dimension: current_approval_amount {
    type: number
    sql: ${TABLE}.CurrentApprovalAmount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_current_approval_amount {
    type: sum
    sql: ${current_approval_amount} ;;  }
  measure: average_current_approval_amount {
    type: average
    sql: ${current_approval_amount} ;;  }

  dimension_group: date_approved {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateApproved ;;
  }

  dimension: debt_interest_proceed {
    type: number
    sql: ${TABLE}.DEBT_INTEREST_PROCEED ;;
  }

  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EndDate ;;
  }

  dimension: erc1_estimate_q12020 {
    type: number
    sql: ${TABLE}.ERC1EstimateQ12020 ;;
  }

  dimension: erc1_estimate_q12020_per_employee {
    type: number
    sql: ${TABLE}.ERC1EstimateQ12020_per_employee ;;
  }

  dimension: erc1_estimate_q12020_rule1_2_positve {
    type: number
    sql: ${TABLE}.ERC1EstimateQ12020_rule1_2_positve ;;
  }

  dimension: erc1_estimate_q12021 {
    type: number
    sql: ${TABLE}.ERC1EstimateQ12021 ;;
  }

  dimension: erc1_estimate_q22020 {
    type: number
    sql: ${TABLE}.ERC1EstimateQ22020 ;;
  }

  dimension: erc1_estimate_q22020_per_employee {
    type: number
    sql: ${TABLE}.ERC1EstimateQ22020_per_employee ;;
  }

  dimension: erc1_estimate_q22020_rule2_positve {
    type: number
    sql: ${TABLE}.ERC1EstimateQ22020_rule2_positve ;;
  }

  dimension: erc1_estimate_q22021 {
    type: number
    sql: ${TABLE}.ERC1EstimateQ22021 ;;
  }

  dimension: erc1_estimate_q32020 {
    type: number
    sql: ${TABLE}.ERC1EstimateQ32020 ;;
  }

  dimension: erc1_estimate_q32020_per_employee {
    type: number
    sql: ${TABLE}.ERC1EstimateQ32020_per_employee ;;
  }

  dimension: erc1_estimate_q32020_rule2_positve {
    type: number
    sql: ${TABLE}.ERC1EstimateQ32020_rule2_positve ;;
  }

  dimension: erc1_estimate_q32021 {
    type: number
    sql: ${TABLE}.ERC1EstimateQ32021 ;;
  }

  dimension: erc1_estimate_q42020 {
    type: number
    sql: ${TABLE}.ERC1EstimateQ42020 ;;
  }

  dimension: erc1_estimate_q42020_per_employee {
    type: number
    sql: ${TABLE}.ERC1EstimateQ42020_per_employee ;;
  }

  dimension: erc1_estimate_q42020_rule2_positve {
    type: number
    sql: ${TABLE}.ERC1EstimateQ42020_rule2_positve ;;
  }

  dimension: estimated_number_of_employees {
    type: number
    sql: ${TABLE}.Estimated_Number_of_Employees ;;
  }

  dimension: estimated_number_of_jobs {
    type: number
    sql: ${TABLE}.Estimated_Number_of_Jobs ;;
  }

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.Ethnicity ;;
  }

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
  }

  dimension: f1_ {
    type: number
    sql: ${TABLE}.f1_ ;;
  }

  dimension: forgiveness_amount {
    type: number
    sql: ${TABLE}.ForgivenessAmount ;;
  }

  dimension_group: forgiveness {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ForgivenessDate ;;
  }

  dimension: franchise_name {
    type: string
    sql: ${TABLE}.FranchiseName ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: health_care_proceed {
    type: number
    sql: ${TABLE}.HEALTH_CARE_PROCEED ;;
  }

  dimension: hubzone_indicator {
    type: yesno
    sql: ${TABLE}.HubzoneIndicator ;;
  }

  dimension: id_1 {
    type: number
    sql: ${TABLE}.ID_1 ;;
  }

  dimension: initial_approval_amount {
    type: number
    sql: ${TABLE}.InitialApprovalAmount ;;
  }

  dimension: jobs_reported {
    type: number
    sql: ${TABLE}.JobsReported ;;
  }

  dimension: lmiindicator {
    type: yesno
    sql: ${TABLE}.LMIIndicator ;;
  }

  dimension: loan_number {
    type: number
    sql: ${TABLE}.LoanNumber ;;
  }

  dimension: loan_status {
    type: string
    sql: ${TABLE}.LoanStatus ;;
  }

  dimension_group: loan_status {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LoanStatusDate ;;
  }

  dimension: loanno {
    type: number
    sql: ${TABLE}.loanno ;;
  }

  dimension: max2020 {
    type: number
    sql: ${TABLE}.max2020 ;;
  }

  dimension: max2020_positive {
    type: number
    sql: ${TABLE}.Max2020_positive ;;
  }

  dimension: mortgage_interest_proceed {
    type: number
    sql: ${TABLE}.MORTGAGE_INTEREST_PROCEED ;;
  }

  dimension: naics {
    type: string
    sql: ${TABLE}.naics ;;
  }

  dimension: naics_us_code2017 {
    type: number
    sql: ${TABLE}.NAICS_US_Code2017 ;;
  }

  dimension: naics_us_title2017 {
    type: string
    sql: ${TABLE}.NAICS_US_Title2017 ;;
  }

  dimension: naicscode {
    type: number
    sql: ${TABLE}.NAICSCode ;;
  }

  dimension: non_profit {
    type: yesno
    sql: ${TABLE}.NonProfit ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.Number_of_Employees ;;
  }

  dimension: originating_lender {
    type: string
    sql: ${TABLE}.OriginatingLender ;;
  }

  dimension: originating_lender_city {
    type: string
    sql: ${TABLE}.OriginatingLenderCity ;;
  }

  dimension: originating_lender_location_id {
    type: number
    sql: ${TABLE}.OriginatingLenderLocationID ;;
  }

  dimension: originating_lender_state {
    type: string
    sql: ${TABLE}.OriginatingLenderState ;;
  }

  dimension: payroll_proceed {
    type: number
    sql: ${TABLE}.PAYROLL_PROCEED ;;
  }

  dimension: payroll_proceed_for_ppp {
    type: number
    sql: ${TABLE}.PayrollProceed_for_PPP ;;
  }

  dimension: ppp_loannumber {
    type: number
    sql: ${TABLE}.ppp_loannumber ;;
  }

  dimension: processing_method {
    type: string
    sql: ${TABLE}.ProcessingMethod ;;
  }

  dimension: project_city {
    type: string
    sql: ${TABLE}.ProjectCity ;;
  }

  dimension: project_county_name {
    type: string
    sql: ${TABLE}.ProjectCountyName ;;
  }

  dimension: project_state {
    type: string
    sql: ${TABLE}.ProjectState ;;
  }

  dimension: project_zip {
    type: string
    sql: ${TABLE}.ProjectZip ;;
  }

  dimension: quarterly_wages_per_employee {
    type: number
    sql: ${TABLE}.Quarterly_wages_per_employee ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.Race ;;
  }

  dimension: refinance_eidl_proceed {
    type: number
    sql: ${TABLE}.REFINANCE_EIDL_PROCEED ;;
  }

  dimension: rent_proceed {
    type: number
    sql: ${TABLE}.RENT_PROCEED ;;
  }

  dimension: row_number {
    type: number
    sql: ${TABLE}.row_number ;;
  }

  dimension: rrf_business_name_key {
    type: string
    sql: ${TABLE}.rrf_BusinessName_key ;;
  }

  dimension: rrf_grant_amount {
    type: number
    sql: ${TABLE}.rrf_GrantAmount ;;
  }

  dimension: rrf_loan_number {
    type: number
    sql: ${TABLE}.rrf_LoanNumber ;;
  }

  dimension: rural_urban_indicator {
    type: string
    sql: ${TABLE}.RuralUrbanIndicator ;;
  }

  dimension: sbaguaranty_percentage {
    type: number
    sql: ${TABLE}.SBAGuarantyPercentage ;;
  }

  dimension: sbaoffice_code {
    type: number
    sql: ${TABLE}.SBAOfficeCode ;;
  }

  dimension: servicing_lender_address {
    type: string
    sql: ${TABLE}.ServicingLenderAddress ;;
  }

  dimension: servicing_lender_city {
    type: string
    sql: ${TABLE}.ServicingLenderCity ;;
  }

  dimension: servicing_lender_location_id {
    type: number
    sql: ${TABLE}.ServicingLenderLocationID ;;
  }

  dimension: servicing_lender_name {
    type: string
    sql: ${TABLE}.ServicingLenderName ;;
  }

  dimension: servicing_lender_state {
    type: string
    sql: ${TABLE}.ServicingLenderState ;;
  }

  dimension: servicing_lender_zip {
    type: string
    sql: ${TABLE}.ServicingLenderZip ;;
  }

  dimension: term {
    type: number
    sql: ${TABLE}.Term ;;
  }

  dimension: undisbursed_amount {
    type: number
    sql: ${TABLE}.UndisbursedAmount ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: utilities_proceed {
    type: number
    sql: ${TABLE}.UTILITIES_PROCEED ;;
  }

  dimension: veteran {
    type: string
    sql: ${TABLE}.Veteran ;;
  }

  dimension: vkfe_2020_total {
    type: number
    sql: ${TABLE}.VKFE_2020_Total ;;
  }

  dimension: vkfe_2020_total_per_employee {
    type: number
    sql: ${TABLE}.VKFE_2020_Total_per_Employee ;;
  }

  dimension: vkfe_2021_total {
    type: number
    sql: ${TABLE}.VKFE_2021_total ;;
  }

  dimension: vkfe_2021_total_per_employee {
    type: number
    sql: ${TABLE}.VKFE_2021_Total_per_Employee ;;
  }

  dimension: vkfe_q1_2021 {
    type: number
    sql: ${TABLE}.VKFE_Q1_2021 ;;
  }

  dimension: vkfe_q1_2021_per_employee {
    type: number
    sql: ${TABLE}.VKFE_Q1_2021_per_Employee ;;
  }

  dimension: vkfe_q1_2021_positive {
    type: number
    sql: ${TABLE}.VKFE_Q1_2021_positive ;;
  }

  dimension: vkfe_q2_2021 {
    type: number
    sql: ${TABLE}.VKFE_Q2_2021 ;;
  }

  dimension: vkfe_q2_2021_grant_correction_rule4 {
    type: number
    sql: ${TABLE}.VKFE_Q2_2021_GrantCorrection_rule4 ;;
  }

  dimension: vkfe_q2_2021_per_employee {
    type: number
    sql: ${TABLE}.VKFE_Q2_2021_per_Employee ;;
  }

  dimension: vkfe_q2_2021_positive {
    type: number
    sql: ${TABLE}.VKFE_Q2_2021_positive ;;
  }

  dimension: vkfe_q2_2021_rule4_positive {
    type: number
    sql: ${TABLE}.VKFE_Q2_2021_rule4_positive ;;
  }

  dimension: vkfe_q3_2021 {
    type: number
    sql: ${TABLE}.VKFE_Q3_2021 ;;
  }

  dimension: vkfe_q3_2021_per_employee {
    type: number
    sql: ${TABLE}.VKFE_Q3_2021_per_Employee ;;
  }

  dimension: vkfe_q3_2021_positive {
    type: number
    sql: ${TABLE}.VKFE_Q3_2021_positive ;;
  }

  dimension: vkfe_q3_2021_rule3_positive {
    type: number
    sql: ${TABLE}.VKFE_Q3_2021_rule3_positive ;;
  }

  dimension: vkfe_total {
    type: number
    sql: ${TABLE}.VKFE_total ;;
  }

  dimension: vkfe_total_by_estimated_number_of_employees {
    type: number
    sql: ${TABLE}.VKFE_Total_by_Estimated_Number_of_Employees ;;
  }

  dimension: wq {
    type: number
    sql: ${TABLE}.WQ ;;
  }

  dimension: zip_5 {
    type: string
    sql: ${TABLE}.zip_5 ;;
  }

  dimension: zip_5_1 {
    type: string
    sql: ${TABLE}.zip_5_1 ;;
  }
  measure: count {
    type: count
    drill_fields: [id, project_county_name, borrower_name, franchise_name, servicing_lender_name]
  }
}
