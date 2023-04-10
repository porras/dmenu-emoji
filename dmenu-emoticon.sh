#!/bin/bash
# This files comes from:
# https://github.com/porras/dmenu-emoji
# forked to:
# https://github.com/deadvey/dmenu-emoticon.sh
# If this file includes emojis below "__DATA__" it is generated.
# This file was generated: 2022-04-21 12:38:03+00:00

set -e

case "$1" in
  "list")
    data=$(sed '0,/^__DATA__$/d' "$0")
    echo "$data"
    ;;
  "copy")
    input=$(tee)
    if [ ! -z "$input" ]; then
      emoji=${input: 23}
      echo -n "$emoji" | xclip -selection c
      command -v notify-send > /dev/null && notify-send -t 200 "$emoji copied!"
    fi
    ;;
  "")
    bash $0 list | dmenu -p 'Emoji: ' | bash $0 copy
    ;;
esac

exit

# make sure they all start at the same point (column 23)
#emoticonname          emoticon

__DATA__
happy                  :)
sad                    :(
angry                  >:(
meh 1                  :|
meh 2                  ·_·
awkward                :/
tounge 1               :P
tounge 2               :p
shrug                  ¯\_(ツ)_/¯ 
evil                   >:)
surprised 1            0_0
surprised 2            o_o
surprised 3            O_O
surprised 4            •_•
surprised 5            :o
surprised 6            :O
odd 1                  o_O
odd 2                  O_o
japanese tsu smile     ツ
fighting               (ง︡'-'︠)ง
flexing                ᕙ(`▿´)ᕗ
preparing punch        ᕙ( ︡'︡益'︠)ง
uwu                    uwu
owo                    owo
lenn happy             ( ͡❛ ͜ʖ ͡❛)
wink                   ;)
tear | cry             :'(
weeping | crying       ;_;
lenn shrug             ¯\_( ͡❛ ͜ʖ ͡❛)_/¯








