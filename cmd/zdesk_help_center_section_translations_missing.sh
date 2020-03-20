# https://developer.zendesk.com/rest_api/docs/help_center/translations#list-missing-translations
zdesk_help_center_section_translations_missing () {
  method=GET
  url="$(echo "/api/v2/help_center/sections/{section_id}/translations/missing.json" | sed \
    -e "s/{section_id}"/"$1"/ \
  )"
  shift
}