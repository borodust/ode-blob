#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

lisp download-blobs --lib-postfix ".bodged" \
     ode https://github.com/borodust/bodge-ode \
     "$script_dir/" $1
