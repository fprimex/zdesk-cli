# https://developer.zendesk.com/rest_api/docs/chat/skills#delete-skill-by-name
zdesk_skills_name_delete () {
  method=DELETE
  url="$(echo "/api/v2/skills/name/{name}" | sed \
    -e "s/{name}"/"$1"/ \
  )"
  shift
}