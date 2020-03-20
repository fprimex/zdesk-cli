# https://developer.zendesk.com/rest_api/docs/core/support_addresses#delete-recipient-address
zdesk_recipient_address_delete () {
  method=DELETE
  url="$(echo "/api/v2/recipient_addresses/{id}.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}