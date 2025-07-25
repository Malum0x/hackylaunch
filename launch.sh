#!/bin/bash

(source jupyter_env/bin/activate && jupyter notebook) &

sleep 3

open_url() {
    if command -v xdg-open > /dev/null; then
        xdg-open "$1" &
    elif command -v open > /dev/null; then
        open "$1"
    elif command -v start > /dev/null; then
        start "$1"
    else
        echo "Cannot open URLs on this system"
        echo "Please manually open: $1"
    fi
}

open_url "https://github.com/"
open_url "https://www.youtube.com/watch?v=_tUBCmGBO3A&list=RD_tUBCmGBO3A&start_radio=1"
open_url "https://huggingface.co/"
open_url "https://x.com"

wait
