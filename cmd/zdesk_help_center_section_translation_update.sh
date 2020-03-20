# https://developer.zendesk.com/rest_api/docs/help_center/translations#update-translation
zdesk_help_center_section_translation_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/sections/{section_id}/translations/{locale}.json" | sed \
    -e "s/{section_id}"/"$1"/ \
    -e "s/{locale}"/"$1"/ \
  )"
  shift
  shift
}