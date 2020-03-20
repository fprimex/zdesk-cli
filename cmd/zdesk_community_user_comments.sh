# https://developer.zendesk.com/rest_api/docs/help_center/post_comments#list-comments
zdesk_community_user_comments () {
  method=GET
  url="$(echo "/api/v2/community/users/{id}/comments.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}