# https://developer.zendesk.com/rest_api/docs/core/targets#delete-target
zdesk_target_delete () {
  method=DELETE
  url="$(echo "/api/v2/targets/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}