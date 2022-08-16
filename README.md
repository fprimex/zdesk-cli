# zdesk-cli

A portable bourne shell CLI for the Zendesk helpdesk system

Make it go:

* Clone repo
* Add `zdesk` to your path by modifying `$PATH` or making a symlink
* `zdesk -h` for help

Examples:

```
# Use command line options to specify everything
zdesk tickets list -email me@example.com -password MYPASSWORD -hostname example.zendesk.com

# Create or edit the config file with defaults
zdesk config -email me@example.com -api MYAPITOKEN -hostname example.zendesk.com

# Now the core options don't need to be specified
zdesk ticket show 1234

# Use jq style options to make a JSON payload
zdesk ticket create .ticket.subject 'Made with zdesk-cli' .ticket.comment.body 'Best CLI ever'
```
