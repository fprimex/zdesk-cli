# https://developer.zendesk.com/rest_api/docs/help_center/subscriptions#list-post-subscriptions
zdesk_community_post_subscriptions () {
  method=GET
  url="$(echo "/api/v2/community/posts/{post_id}/subscriptions.json" | sed \
    -e "s/{post_id}"/"$1"/ \
  )"
  shift
}