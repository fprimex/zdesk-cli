# https://developer.zendesk.com/rest_api/docs/core/targets#update-target
zdesk_target_update () {
  method=PUT
  url="$(echo "/api/v2/targets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}