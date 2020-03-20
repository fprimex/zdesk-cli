# https://developer.zendesk.com/rest_api/docs/core/users#show-compliance-deletion-statuses
zdesk_user_compliance_deletion_statuses () {
  method=GET
  url="$(echo "/api/v2/users/{id}/compliance_deletion_statuses.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}