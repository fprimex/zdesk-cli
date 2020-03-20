# https://developer.zendesk.com/rest_api/docs/chat/skills#delete-skill-by-id
zdesk_skill_delete () {
  method=DELETE
  url="$(echo "/api/v2/skills/{skill_id}" | sed \
    -e "s/{skill_id}"/"$1"/ \
  )"
  shift
}