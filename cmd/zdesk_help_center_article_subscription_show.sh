# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#show-article-subscription
zdesk_help_center_article_subscription_show () {
  method=GET
  url="$(echo "/api/v2/help_center/articles/{article_id}/subscriptions/{id}.json" | sed \
    -e "s/{article_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
  if [ -n "locale" ]; then
    url="$(echo "/api/v2/help_center/{locale}/articles/{article_id}/subscriptions/{id}.json" | sed \ 
    -e "{article_id}" "$1" \ 
    -e "{id}" "$1" \ 
     )"
  shift
  shift
  fi
}