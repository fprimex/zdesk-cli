# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#create-article-subscription
zdesk_help_center_article_subscription_create () {
  method=POST
  url="$(echo "/api/v2/help_center/articles/{article_id}/subscriptions.json" | sed \
    -e "s/{article_id}"/"$1"/ \
  )"
  shift
}