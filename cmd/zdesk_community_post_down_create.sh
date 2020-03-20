# https://developer.zendesk.com/rest_api/docs/help_center/votes#create-vote
zdesk_community_post_down_create () {
  method=POST
  url="$(echo "/api/v2/community/posts/{id}/down.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}