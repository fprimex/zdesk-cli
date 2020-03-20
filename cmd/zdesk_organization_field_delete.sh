# https://developer.zendesk.com/rest_api/docs/core/organization_fields#delete-organization-field
zdesk_organization_field_delete () {
  method=DELETE
  url="$(echo "/api/v2/organization_fields/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}