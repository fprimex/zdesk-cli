# https://developer.zendesk.com/rest_api/docs/help_center/translations#list-missing-translations
zdesk_help_center_article_translations_missing () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{article_id}/translations/missing.json" | sed \
    -e "s/{article_id}"/"$1"/ \
  )"
  shift
}