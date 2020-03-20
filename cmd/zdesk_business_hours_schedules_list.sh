# https://developer.zendesk.com/rest_api/docs/core/schedules#list-all-schedules
zdesk_business_hours_schedules_list () {
  method=GET
  url=/api/v2/business_hours/schedules.json
}