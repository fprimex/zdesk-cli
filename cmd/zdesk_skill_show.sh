# https://developer.zendesk.com/rest_api/docs/chat/skills#get-skill-by-id
zdesk_skill_show () {
  method=GET
  url="$(echo "/api/v2/skills/{skill_id}" | sed \
    -e "s/{skill_id}"/"$1"/ \
  )"
  shift
}