# https://developer.zendesk.com/rest_api/docs/chat/skills#update-skill-by-id
zdesk_skill_update () {
  method=PUT
  url="$(echo "/api/v2/skills/{skill_id}" | sed \
    -e "s/{skill_id}"/"$1"/ \
  )"
  shift
}