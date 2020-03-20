# https://developer.zendesk.com/rest_api/docs/help_center/votes#list-votes
zdesk_community_post_votes () {
  method=GET
  url="$(echo "/api/v2/community/posts/{post_id}/votes.json" | sed \
    -e "s/{post_id}"/"$1"/ \
  )"
  shift
}