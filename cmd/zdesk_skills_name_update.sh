# https://developer.zendesk.com/rest_api/docs/chat/skills#update-skill-by-name
zdesk_skills_name_update () {
  method=PUT
  url="$(echo "/api/v2/skills/name/{name}" | sed \
    -e "s/{name}"/"$1"/ \
  )"
  shift
}