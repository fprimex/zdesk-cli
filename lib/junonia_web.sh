#!/bin/sh

## -------------------------------------------------------------------
##
## junonia_web.sh - shell functions for web work
##
## -------------------------------------------------------------------
##
## Copyright (c) 2020 Brent W. Woodruff. All Rights Reserved.
##
## This file is provided to you under the Mozilla Public License
## Version 2.0 (the "License"); you may not use this file
## except in compliance with the License.  You may obtain
## a copy of the License at
##
##   https://www.mozilla.org/en-US/MPL/2.0/
##
## Unless required by applicable law or agreed to in writing,
## software distributed under the License is distributed on an
## "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
## KIND, either express or implied.  See the License for the
## specific language governing permissions and limitations
## under the License.
##
## -------------------------------------------------------------------

# JUNONIA_DEBUG      # Turn on debugging of the junonia library
# JUNONIA_CONFIG     # Path to script rc file
# JUNONIA_CONFIGDIR  # Path to config directory
# JUNONIA_CACHEDIR   # Path to cache directory
# JUNONIA_CACHE      # Flag to optionally disable (0) caching
# JUNONIA_WRAP       # Width of two column output (option help listings)
# JUNONIA_COL1       # Width of column one
# JUNONIA_COL2       # Width of column two
# TMPDIR             # Temporary directory

###
### Defaults
###

#JW_NEXT_PAGE_NUM='.meta.pagination."next-page"'

#JW_NEXT_PAGE=.links.next
JW_NEXT_PAGE=.next_page

#JW_CONTENT_TYPE=application/vnd.api+json
JW_CONTENT_TYPE=application/json

JW_NPAGES=10000

if [ -n "$JUNONIA_DEBUG" ]; then
  # Debugging. Print command errors and make them verbose
  jw_curl_silent=
else
  # Not debugging. Shut everyting up.
  jw_curl_silent="-s"
fi

###
### jq utility functions
###

jw_jq_leafprint='def leafprint(o):
  o.indent as $i |
  $i + "  " as $ni |
  o.errors as $e |
  $e | keys[] as $k |
    (select(($e[$k] | type) != "array" and ($e[$k] | type) != "object") |
      "\($k): \($e[$k])"),
    (select(($e[$k] | type) == "object") |
      "\($k):",
      "\(leaf_print({"errors": $e[$k], "indent": $ni}))"),
    (select(($e[$k] | type) == "array") |
      "\($k):",
      "\(leaf_print({"errors": $e[$k], "indent": $ni}))");'

readonly JW_JQS="
$jw_jq_printleaf
"

###
### Shell utility functions
###

# Replace quotes and newlines with escape characters to prepare the
# value for insertion into JSON.
jw_json_escape () {
  printf '%s' "$1" | awk '
  {
    gsub(/"/,"\\\"")
    gsub(/\\n/,"\\\\n")
  }
  NR == 1 {
    value_line = $0
  }
  NR != 1 {
    value_line = value_line "\\n" $0
  }
  END {
    printf "%s", value_line
  }'
}

jw_curl () {
  # $1: optional integer parameter for number of next-pages to retrieve
  # $1 or $2 to $#: arguments to provide to curl

  echodebug "jw_curl args: $@"

	if ! [ "$1" -eq "$1" ] >/dev/null 2>&1; then
    npages="$JW_NPAGES"
  else
    npages="$1"
    shift
	fi

  echodebug "npages: $npages"
  echodebug "curl args: $@"
 
  if [ "$npages" -lt 1 ]; then
    return 0
  fi

  case $curl_token_src in
    curlrc)
      echovvv "curl --header \"Content-Type: $JW_CONTENT_TYPE\"" >&2
      echovvv "     --config \"$curlrc\"" >&2
      echovvv "     $*" >&2

      resp="$(curl $jw_curl_silent -w '\nhttp_code: %{http_code}\n' \
                   --header "Content-Type: $JW_CONTENT_TYPE" \
                   --config "$curlrc" \
                   $@)"
      ;;
    token)
      echovvv "curl --header \"Content-Type: $JW_CONTENT_TYPE\"" >&2
      echovvv "     --header \"Authorization: Bearer \$JW_TOKEN\"" >&2
      echovvv "     $*" >&2

      resp="$(curl $jw_curl_silent -w '\nhttp_code: %{http_code}\n' \
                   --header "Content-Type: application/$JW_CONTENT_TYPE" \
                   --header "Authorization: Bearer $JW_TOKEN" \
                   $@)"
      ;;
    basic)
      echovvv "curl --header \"Content-Type: $JW_CONTENT_TYPE\"" >&2
      echovvv "     --header \"Authorization: Basic \$JW_USER:\$JW_PASS\"" >&2
      echovvv "     $*" >&2

      resp="$(curl $jw_curl_silent -w '\nhttp_code: %{http_code}\n' \
                   --header "Content-Type: application/$JW_CONTENT_TYPE" \
                   --header "Authorization: Basic $JW_USER:$JW_PASS" \
                   $@)"
      ;;
  esac

  resp_body="$(printf '%s' "$resp" | awk '!/^http_code/; /^http_code/{next}')"
  resp_code="$(printf '%s' "$resp" | awk '!/^http_code/{next} /^http_code/{print $2}')"

  echodebug "API request http code: $resp_code. Response:"
  echodebug_raw "$resp_body"

  case "$resp_code" in
    2*)
      printf "%s" "$resp_body"

      next_page="$(printf "%s" "$resp_body" | \
                   jq -r "$JW_NEXT_PAGE" 2>&3)"

      if [ -n "$next_page" ] && [ "$next_page" != null ] &&
         ! [ "$npages" -le 1 ]; then
        echodebug "next page: $next_page"
        echodebug "npages: $npages"
        #next_link="$(printf "%s" "$resp_body" | jq -r '.links.next')"
        #echodebug "next link: $next_link"
        jw_curl $((--npages)) "$next_page"
      fi
      ;;
    4*|5*)
      echoerr "API request failed."
      echoerr_raw "HTTP status code: $resp_code"
      jw_jq_prog='leaf_print({"errors": .errors[], "indent": "  "})'

      if jsonapi_err="$(echo "$resp_body" \
                        | jq -r "$jw_jq_leafprint $jw_jq_prog")"; then
        echoerr_raw "JSON-API details:"
        echoerr_raw "$jsonapi_err"
      else
        echoerr "Response:"
        echoerr_raw "$resp_body"
      fi

      return 1
      ;;
    *)
      echoerr "Unable to complete API request."
      echoerr "HTTP status code: $resp_code."
      echoerr "Response:"
      echoerr "$resp_body"
      return 1
      ;;
  esac
}

jw_curlrc () {
  readonly JW_DEFAULT_CURLRC="$JUNONIA_CONFIGDIR/curlrc"
  readonly JW_CURLRC="${1:-"$JW_DEFAULT_CURLRC"}"

  curl_token_src=

  # curlrc argument at the command line takes highest precedence
  if echo "$TFH_CMDLINE" | grep -qE -- '-curlrc'; then
    echodebug "explicit -curlrc"
    if [ -f "$curlrc" ]; then
      curl_token_src=curlrc
    else
      curl_token_src=curlrc_not_found
    fi
  fi

  # token at the command line takes second highest precedence
  if [ -z "$curl_token_src" ] && [ -n "$token" ] &&
    echo "$TFH_CMDLINE" | grep -qE -- '-token'; then
    echodebug "explicit -token"
    curl_token_src=token
  fi

  # curlrc from any source (default included) comes third
  if [ -z "$curl_token_src" ] && [ -f "$curlrc" ]; then
    echodebug "curlrc from env and config file"
    curl_token_src=curlrc
  fi

  # token from the config file or environment var comes last
  if [ -z "$curl_token_src" ] && [ -n "$token" ]; then
    echodebug "token from env and config file"
    curl_token_src=token
  fi

  if [ -z "$curl_token_src" ]; then
    curl_token_src=none
  fi

  if [ -z "$token" ]; then
    token_status="empty"
  else
    token_status="not empty"
  fi

  case $curl_token_src in
    curlrc)
      echov "token:     $token_status, unused"
      echov "curlrc:    $curlrc"
      ;;
    token)
      echov "token:     $token_status"
      echov "curlrc:    $curlrc, unused"
      ;;
    curlrc_not_found)
      echov "token:     $token_status, unused"
      echov "curlrc:    $curlrc specified but not found"
      ;;
    none)
      echov "token:     empty"
      echov "curlrc:    $curlrc not found"
      ;;
  esac
}

# Write a given token value to a curl config file at the given path.
# $1 file path
# $2 token
make_curlrc () {
  curlrc_dir="$(dirname "$1")"

  if [ ! -d "$curlrc_dir" ]; then
    if ! mkdir -p "$curlrc_dir"; then
      echoerr "unable to create configuration directory:"
      echoerr "$curlrc_dir"
      return 1
    fi
  fi

  if ! echo > "$1"; then
    echoerr "Error: cannot write to curl config file:"
    echoerr "$1"
    return 1
  fi

  if ! chmod 600 "$1"; then
    echoerr "WARNING: unable to set permissions on curl config file:"
    echoerr "chmod 600 $1"
  fi

  if ! echo "--header \"Authorization: Bearer $2\"" > "$1"; then
    echoerr "Error: cannot generate curl config file:"
    echoerr "$1"
    return 1
  fi

  echodebug "Created $1"
}

tfh_curl_config () {
  tfrc="$1"
  curltoken="$2"

  if [ -n "$curltoken" ] && [ -n "$tfrc" ]; then
    echoerr "only one of -curltoken or -tfrc can be specified"
    return 1
  fi

  if [ -n "$curltoken" ]; then
    # (Re)create / overwrite the curlrc
    make_curlrc "$curlrc" "$curltoken"
    echo "wrote $curlrc"
    return 0
  fi

  tf_config_token=
  tf_config="${TERRAFORM_CONFIG:-"$HOME/.terraformrc"}"
  if [ -f "$tf_config" ]; then
    # This is simplified. It depends on the token keyword and value being
    # on the same line in the .terraformrc.
    tf_config_token="$(awk -v host="$hostname" '
      # Skip commented lines
      /^ *#/ {
        next
      }

      # Get the host for this credentials entry
      /credentials  *"/ {
        cred_host = $2
        gsub(/"/, "", cred_host)
      }

      # Extract the token and note if it matches the specified host
      /token *= *"[A-Za-z0-9\.]+"/ {
        tokens++
        match($0, /"[A-Za-z0-9\.]+"/)
        token = substr($0, RSTART+1, RLENGTH-2)

        if(cred_host == host) {
          host_token = token
        }
      }

      END {
        # There was only one token, use that regardless as to the host
        if(tokens == 1) {
          print token
        }

        # More than one token, use the specified host
        if(tokens > 1 && host_token) {
          print host_token
        }

        # Either did not find any tokens or found tokens, but did not find the
        # token for the specified host. To avoid being ambiguous, do not output
        # any tokens.
      }' "$tf_config")"
  fi

  if [ $tfrc ]; then
    if [ -n "$tf_config_token" ]; then
      if ! make_curlrc "$curlrc" "$tf_config_token"; then
        echoerr "failed to create curlrc with terraformrc token"
        echoerr "source: $tf_config"
        echoerr "destination: $curlrc"
        return 1
      fi
      echo "$curlrc generated from $tf_config"
      return 0
    else
      echoerr "unable to extract token from terraformrc:"
      echoerr "$tf_config"
      return 1
    fi
  fi

  if [ -f "$curlrc" ]; then
    echo "$curlrc"
    echov "$(cat "$curlrc")"

    if [ -f "$tf_config" ] && [ -z "$TFH_NO_CURLRC_DIFF" ] ; then
      # Got a .terraformrc token and the current token is from a tfh curl
      # config. Compare the tokens to see if they're the same.
      curlrc_token="$(awk '
        /Bearer [A-Za-z0-9\.][A-Za-z0-9\.]*/ {
          match($0, /Bearer [A-Za-z0-9\.][A-Za-z0-9\.]*/)
          print substr($0, RSTART+7, RLENGTH-7)
        }' "$curlrc")"

      if [ "$curlrc_token" != "$tf_config_token" ]; then
        echo
        echo "WARNING tokens do not match in files:"
        echo "$tf_config"
        echo "$curlrc"
        echo
        echo "tfh will use: $curlrc"
        echo
        echo "to use $tf_config, run \`tfh curl-config -tfrc\`"
        echo
        echo "suppress this message by setting TFH_NO_CURLRC_DIFF=1"
        echo

        echov "curlrc     : $curlrc_token"
        echov "terraformrc: $tf_config_token"
      fi
    fi
  else
    echo "no curlrc file at $curlrc"
  fi
}
