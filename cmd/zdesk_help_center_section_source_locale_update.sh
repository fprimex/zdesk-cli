# https://developer.zendesk.com/rest_api/docs/help_center/sections#update-section-source-locale
zdesk_help_center_section_source_locale_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/sections/{id}/source_locale.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}