# https://developer.zendesk.com/rest_api/docs/core/target_failures#show-target-failure
zdesk_target_failure_show () {
  method=GET
  url="$(echo "/api/v2/target_failures/{id}" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}