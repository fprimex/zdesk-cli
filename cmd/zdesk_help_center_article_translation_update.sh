# https://developer.zendesk.com/rest_api/docs/help_center/translations#update-translation
zdesk_help_center_article_translation_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/articles/{article_id}/translations/{locale}.json" | sed \
    -e "s/{article_id}"/"$1"/ \
    -e "s/{locale}"/"$1"/ \
  )"
  shift
  shift
}