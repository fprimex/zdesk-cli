# https://developer.zendesk.com/rest_api/docs/core/organization_fields#update-organization-fields
zdesk_organization_field_update () {
  method=PUT
  url="$(echo "/api/v2/organization_fields/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}