## `zdesk`

Unofficial command line client for the Zendesk helpdesk service

### Synopsis

    zdesk [SUBCOMMANDS] [PARAMETERS] [OPTIONS]

### Description

The `zdesk` program is a command line client for the Zendesk REST API written in portable Bourne shell.

### Options

* `-hostname HOSTNAME=app.terraform.io`

The address of your Terraform Enterprise instance. Defaults to the SaaS hostname at https://app.terraform.io

* `-token TOKEN`

Access token for Terraform Enterprise API requests. Use of a `curlrc` file is encouraged to keep tokens out of environment variables and the process list.

* `-curlrc FILEPATH`

Curl configuration file providing an access token for Terraform Enterprise API requests. This file can be managed using the `zdesk curl-config` command.

* `-complete-response`

* `-get-all-pages`

* `-mime-type MIMETYPE`

* `-retry-on CODES`

* `-max-retries RETRIES`

* `-raw-query QUERY`

* `-retval SELECTION`

* `-include OPTION`

* `-page OPTION`

* `-per-page OPTION`

* `-sort-by OPTION`

* `-sort-order OPTION`

* `-v, -verbose`

Enable verbose messages.

* `-vv, -vverbose`

Enable very verbose messages.

* `-vvv, -vvverbose`

Enable very, very verbose messages.

