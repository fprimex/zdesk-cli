## `zdesk tickets list`

/tickets.json

### Synopsis

    zdesk tickets list [ ... ]

### REST endpoint

    GET https://{HOSTNAME}/api/v2/tickets.json

### Description

https://developer.zendesk.com/api-reference/ticketing/tickets/api-reference/voice/talk-partner-edition-api/reference/#creating-voicemail-tickets

### Options

* `-include OPTION`

### Output

| ID    | Status         | Priority    | Created        | Updated       | Subject        |
| ----- | -------------- | ----------- | -------------- | ------------- | -------------- |
| `.id` | `.status`      | `.priority` | `.created_at`  | `.updated_at` | `.raw_subject` | `.tickets` |
