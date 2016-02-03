#!/bin/bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

set -x
curl -fSL'#' 'https://security-tracker.debian.org/tracker/data/json' -o debian-security.json
jq . debian-security.json > debian-security.pretty.json
