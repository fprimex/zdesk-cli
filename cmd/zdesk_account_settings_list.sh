# https://developer.zendesk.com/rest_api/docs/core/account_settings#show-settings
zdesk_account_settings_list () {
  method=GET
  url=/api/v2/account/settings.json
}