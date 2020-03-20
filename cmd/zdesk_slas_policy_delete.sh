# https://developer.zendesk.com/rest_api/docs/core/sla_policies#delete-sla-policy
zdesk_slas_policy_delete () {
  method=DELETE
  url="$(echo "/api/v2/slas/policies/{id}" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}