# https://developer.zendesk.com/rest_api/docs/core/audit_logs#getting-audit-logs
zdesk_audit_log_show () {
  method=GET
  url="$(echo "/api/v2/audit_logs/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}