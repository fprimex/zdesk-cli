# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#show-post-subscription
zdesk_community_post_subscription_show () {
  method=GET
  url="$(echo "/api/v2/community/posts/{post_id}/subscriptions/{id}.json" | sed \
    -e "s/{post_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}