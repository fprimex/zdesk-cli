# https://developer.zendesk.com/rest_api/docs/help_center/translations#list-translations
zdesk_help_center_article_translations () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{article_id}/translations.json" | sed \
    -e "s/{article_id}"/"$1"/ \
  )"
  shift
}