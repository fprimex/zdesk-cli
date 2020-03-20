# https://developer.zendesk.com/rest_api/docs/core/sla_policies#retrieve-supported-filter-definition-items
zdesk_slas_policies_definitions_list () {
  method=GET
  url=/api/v2/slas/policies/definitions.json
}