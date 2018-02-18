#!/bin/bash

set -e

case "$1" in
  "list")
    data=$(sed '0,/^__DATA__$/d' "$0")
    echo "$data"
    ;;
  "copy")
    input=$(tee)
    if [ ! -z "$input" ]; then
      emoji=${input: -1}
      echo -n "$emoji" | xclip -selection c
      command -v notify-send > /dev/null && notify-send -t 200 "$emoji copied!"
    fi
    ;;
  "")
    bash $0 list | dmenu -p 'Emoji: ' | bash $0 copy
    ;;
esac

exit

__DATA__
