# https://developer.zendesk.com/rest_api/docs/core/schedules#list-holidays-for-a-schedule
zdesk_business_hours_schedule_holidays () {
  method=GET
  url="$(echo "/api/v2/business_hours/schedules/{id}/holidays.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}