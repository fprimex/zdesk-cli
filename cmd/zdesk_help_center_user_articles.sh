# https://developer.zendesk.com/rest_api/docs/help_center/articles#list-articles
zdesk_help_center_user_articles () {
  method=GET
  url="$(echo "/api/v2/help_center/users/{id}/articles.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}