# https://developer.zendesk.com/rest_api/docs/core/support_addresses#verify-support-address-forwarding
zdesk_recipient_address_verify () {
  method=PUT
  url="$(echo "/api/v2/recipient_addresses/{id}/verify.json" | sed \
    -e "s/{id}"/"$1"/ \
  )"
  shift
}