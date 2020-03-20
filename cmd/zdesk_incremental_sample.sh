# https://developer.zendesk.com/rest_api/docs/core/incremental_export#incremental-sample-export
zdesk_incremental_sample () {
  method=GET
  url="$(echo "/api/v2/incremental/{item}/sample.json" | sed \
    -e "s/{item}"/"$1"/ \
  )"
  shift
}