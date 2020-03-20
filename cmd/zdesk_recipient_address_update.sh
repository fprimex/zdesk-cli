# https://developer.zendesk.com/rest_api/docs/core/support_addresses#update-support-address
zdesk_recipient_address_update () {
  method=PUT
  url="$(echo "/api/v2/recipient_addresses/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}