# The name of this view in Looker is "Testing Blob Type"
view: testing_blob_type {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.testing_blob_type ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Col1" in Explore.

  dimension: col1 {
    type: string
    sql: ${TABLE}.col1 ;;
  }

  dimension: col2 {
    type: string
    sql: ${TABLE}.col2 ;;
  }

  dimension: colid {
    type: number
    value_format_name: id
    sql: ${TABLE}.colid ;;
  }
  measure: count {
    type: count
  }
}
