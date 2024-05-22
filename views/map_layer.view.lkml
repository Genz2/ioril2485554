# The name of this view in Looker is "Map Layer"
view: map_layer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.map_layer ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer Neighborhood" in Explore.

  dimension: customer_neighborhood {
    type: string
    sql: ${TABLE}.customer_neighborhood ;;
  }
  measure: count {
    type: count
  }
}
