package terraform

import input.tfplan as tfplan

deny[reason] {
  r = tfplan.resource_changes[_]
  r.type == "google_sql_database_instance"
  r.change.after.database_version == "MYSQL_5_6"
  reason := "Instance type MYSQL 5.6 not allowed! Too old!"
}