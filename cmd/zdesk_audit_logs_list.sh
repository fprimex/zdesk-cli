# https://developer.zendesk.com/rest_api/docs/core/audit_logs#listing-audit-logs
zdesk_audit_logs_list () {
  method=GET
  url=/api/v2/audit_logs.json
  [ -n "$1" ] && query="$query&filter_actor_id=$1"
  shift
  [ -n "$1" ] && query="$query&filter_created_at=$1"
  shift
  [ -n "$1" ] && query="$query&filter_ip_address=$1"
  shift
  [ -n "$1" ] && query="$query&filter_source_type=$1"
  shift
}