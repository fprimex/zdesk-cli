# https://developer.zendesk.com/rest_api/docs/chat/skills#get-skill-by-name
zdesk_skills_name_show () {
  method=GET
  url="$(echo "/api/v2/skills/name/{name}" | sed \
    -e "s/{name}"/"$1"/ \
  )"
  shift
}