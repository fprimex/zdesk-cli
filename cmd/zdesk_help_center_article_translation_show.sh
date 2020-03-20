# https://developer.zendesk.com/rest_api/docs/help_center/translations#show-translation
zdesk_help_center_article_translation_show () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{article_id}/translations/{locale}.json" | sed \
    -e "s/{article_id}"/"$1"/ \
    -e "s/{locale}"/"$1"/ \
  )"
  shift
  shift
}