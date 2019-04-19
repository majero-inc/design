#!/bin/bash

function main() {
    scss_files="$(find . -name "*.scss")"
    for f in $scss_files; do
        css="$(echo "$f" | sed 's/scss/css/g')"
        sassc $f > $css
    done
}

main "$@"
