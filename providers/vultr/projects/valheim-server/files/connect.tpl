#!/usr/bin/env sh

set -eof pipefail

[ -n "$$VERBOSE" ] && set -x

ssh -i ${key_path} valheim@${server_address}