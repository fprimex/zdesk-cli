# https://developer.zendesk.com/rest_api/docs/core/end_user#update-user
zdesk_end_user_update () {
  method=PUT
  url="$(echo "/api/v2/end_users/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}