# https://developer.zendesk.com/rest_api/docs/help_center/articles#update-article-source-locale
zdesk_help_center_article_source_locale_update () {
  method=PUT
  url="$(echo "/api/v2/help_center/articles/{id}/source_locale.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}