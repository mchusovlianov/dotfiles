#!/usr/bin/env bash

set -eo pipefail

main() {
    local f=${1:-No target specified}
    if [[ -d "$f" ]]; then
        find "$f" -maxdepth 1 -printf "%Y %u:%g %m %kk %f\n" | sort | head -n 100
    elif [[ -r "$f" ]]; then
        bat --line-range :100 \
            --style numbers,changes \
            --color always \
            -- "$f"
    else
        stat -- "$f"
    fi
}

main "$@"
