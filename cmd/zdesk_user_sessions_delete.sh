# https://developer.zendesk.com/rest_api/docs/core/sessions#bulk-deleting-sessions
zdesk_user_sessions_delete () {
  method=DELETE
  url="$(echo "/api/v2/users/{user_id}/sessions.json" | sed \
    -e "s/{user_id}"/"$1"/ \
  )"
  shift
}