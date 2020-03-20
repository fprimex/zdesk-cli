# https://developer.zendesk.com/rest_api/docs/core/satisfaction_reasons#show-reason-for-satisfaction-rating
zdesk_satisfaction_reason_show () {
  method=GET
  url="$(echo "/api/v2/satisfaction_reasons/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}