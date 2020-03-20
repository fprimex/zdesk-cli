# https://developer.zendesk.com/rest_api/docs/core/support_addresses#show-support-address
zdesk_recipient_address_show () {
  method=GET
  url="$(echo "/api/v2/recipient_addresses/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}