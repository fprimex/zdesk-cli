# https://developer.zendesk.com/rest_api/docs/core/targets#show-target
zdesk_target_show () {
  method=GET
  url="$(echo "/api/v2/targets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}