# https://developer.zendesk.com/rest_api/docs/help_center/translations#delete-translation
zdesk_help_center_translation_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/translations/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}