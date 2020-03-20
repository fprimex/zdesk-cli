# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#list-article-subscriptions
zdesk_help_center_article_subscriptions () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{article_id}/subscriptions.json" | sed \
    -e "s/{article_id}"/"$1"/ \
  )"
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/{article_id}/subscriptions.json" | sed \ 
    -e "{article_id}" "$1" \ 
     )"
  shift
  fi
}