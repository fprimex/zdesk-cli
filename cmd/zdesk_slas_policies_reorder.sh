# https://developer.zendesk.com/rest_api/docs/core/sla_policies#reorder-sla-policies
zdesk_slas_policies_reorder () {
  method=PUT
  url=/api/v2/slas/policies/reorder.json
}