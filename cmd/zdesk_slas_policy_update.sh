# https://developer.zendesk.com/rest_api/docs/core/sla_policies#update-sla-policy
zdesk_slas_policy_update () {
  method=PUT
  url="$(echo "/api/v2/slas/policies/{id}" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}