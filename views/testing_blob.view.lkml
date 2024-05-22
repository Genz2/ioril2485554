# The name of this view in Looker is "Testing Blob"
view: testing_blob {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.testing_blob ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column1" in Explore.

  dimension: column1 {
    type: string
    sql: ${TABLE}.column1 ;;
  }

  dimension: column2 {
    type: string
    sql: ${TABLE}.column2 ;;
  }
  measure: count {
    type: count
  }
}
