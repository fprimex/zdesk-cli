# https://developer.zendesk.com/rest_api/docs/help_center/votes#create-vote
zdesk_community_post_comment_down_create () {
  method=POST
  url="$(echo "/api/v2/community/posts/{post_id}/comments/{id}/down.json" | sed \
    -e "s/{post_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}