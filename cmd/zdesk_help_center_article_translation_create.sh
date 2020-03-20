# https://developer.zendesk.com/rest_api/docs/help_center/translations#create-translation
zdesk_help_center_article_translation_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{article_id}/translations.json" | sed \
    -e "s/{article_id}"/"$1"/ \
  )"
  shift
}