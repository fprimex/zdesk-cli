# https://developer.zendesk.com/rest_api/docs/core/sessions#delete-session
zdesk_user_session_delete () {
  method=DELETE
  url="$(echo "/api/v2/users/{user_id}/sessions/{id}.json" | sed \
    -e "s/{user_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}