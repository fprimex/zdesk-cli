# https://developer.zendesk.com/rest_api/docs/core/satisfaction_reasons#list-reasons-for-satisfaction-rating
zdesk_satisfaction_reasons_list () {
  method=GET
  url=/api/v2/satisfaction_reasons.json
}