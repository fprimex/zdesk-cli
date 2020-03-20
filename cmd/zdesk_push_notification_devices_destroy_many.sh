# https://developer.zendesk.com/rest_api/docs/core/push_notification_devices#bulk-unregister-push-notification-devices
zdesk_push_notification_devices_destroy_many () {
  method=POST
  url=/api/v2/push_notification_devices/destroy_many.json
}