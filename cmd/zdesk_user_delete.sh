# https://developer.zendesk.com/rest_api/docs/core/users#delete-user
zdesk_user_delete () {
  method=DELETE
  url="$(echo "/api/v2/users/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}