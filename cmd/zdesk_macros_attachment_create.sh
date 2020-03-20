# https://developer.zendesk.com/rest_api/docs/core/macros#create-unassociated-macro-attachment
zdesk_macros_attachment_create () {
  method=POST
  url=/api/v2/macros/attachments.json
}