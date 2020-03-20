# https://developer.zendesk.com/rest_api/docs/help_center/sections#delete-section
zdesk_help_center_section_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/sections/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}