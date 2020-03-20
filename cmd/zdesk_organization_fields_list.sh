# https://developer.zendesk.com/rest_api/docs/core/organization_fields#list-organization-fields
zdesk_organization_fields_list () {
  method=GET
  url=/api/v2/organization_fields.json
}