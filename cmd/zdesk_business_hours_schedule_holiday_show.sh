# https://developer.zendesk.com/rest_api/docs/core/schedules#show-a-holiday
zdesk_business_hours_schedule_holiday_show () {
  method=GET
  url="$(echo "/api/v2/business_hours/schedules/{schedule_id}/holidays/{id}.json" | sed \
    -e "s/{schedule_id}"/"$1"/ \
    -e "s/{id}"/"$1"/ \
  )"
  shift
  shift
}