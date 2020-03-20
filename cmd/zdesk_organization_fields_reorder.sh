# https://developer.zendesk.com/rest_api/docs/core/organization_fields#reorder-organization-field
zdesk_organization_fields_reorder () {
  method=PUT
  url=/api/v2/organization_fields/reorder.json
}