# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#create-post-subscription
zdesk_community_post_subscription_create () {
  method=POST
  url="$(echo "/api/v2/community/posts/{post_id}/subscriptions.json" | sed \
    -e "s/{post_id}"/"$1"/ \
  )"
  shift
}