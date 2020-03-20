# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#delete-article-subscription
zdesk_help_center_article_subscription_delete () {
  method=DELETE
  url="$(echo "/api/v2/help_center/articles/{article_id}/subscriptions/{id}.json" | sed \
    -e "s/{article_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}