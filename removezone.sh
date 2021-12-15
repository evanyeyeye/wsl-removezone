#!/bin/bash

monitor() {
    inotifywait -r -m $1 -e create |
    while read dir action file; do
        if [[ "$(printf '%q' $file)" =~ .*Zone.Identifier ]]; then 
            rm $file
        fi
    done
}

export -f monitor
nohup bash -c "monitor $1" >/dev/null 2>&1 &
