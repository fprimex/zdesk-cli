# https://developer.zendesk.com/rest_api/docs/help_center/translations#list-translations
zdesk_help_center_category_translations () {
  method=GET
  url="$(echo "/api/v2/help_center/categories/{category_id}/translations.json" | sed \
    -e "s/{category_id}"/"$1"/ \
  )"
  shift
}