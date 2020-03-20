# https://developer.zendesk.com/rest_api/docs/core/users#merge-end-users
zdesk_user_merge () {
  method=PUT
  url="$(echo "/api/v2/users/{id}/merge.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}