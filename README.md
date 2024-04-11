# Note

I no longer mantain this repository (or use this script). It works for all I know, but I'm using something else so I no longer mantain it. Feel free to keep using it if it works for you, fork it if you need to fix anything, or consider one of the alternatives (see below). For this reasons this repo is archived and read-only.

# dmenu-emoji 💃

Search an emoji by name and copy it to the clipboard. Works best with a dmenu variant that does fuzzy search such as [rofi](https://github.com/DaveDavenport/rofi), but it's compatible with plain [dmenu](https://tools.suckless.org/dmenu/).

If possible, it also sends a desktop notification for better user feedback.

[![Screenshot of usage with rofi](https://i.imgur.com/rJ64CI3.png)](https://i.imgur.com/E6kJHGL.gifv)

[Click the screenshot for a 4MB GIF of how the emoji in the header was added]

## Usage with i3

Download `dmenu-emoji.sh`, make sure it's executable (`chmod + x <file>`), and store it somewhere in your home directory (or in your `$PATH` if you prefer). Assign a keystroke in your [i3](https://i3wm.org/) configuration:

```
# ~/.config/i3/config

bindsym $mod+space exec path/to/dmenu-emoji.sh
```

`dmenu-emoji.sh` is the only file you need, the rest of the files in this repository are scripts to generate that one, which you don't need unless you want to modify it (PRs welcome!).

### Tweeking the `dmenu` command

By default, `dmenu` is called. If you want to use a different menu or pass some option to it, you can use the `list` and `copy` subcommands:

```
# ~/.config/i3/config

bindsym $mod+space exec dmenu-emoji.sh list | rofi -dmenu -p 'Emoji: ' | dmenu-emoji.sh copy
```

## Similar scripts

* [bemoji](https://github.com/marty-oehme/bemoji). Bash based, supports copying or typing emoji on both Wayland and X11. Remembers your favorite selections.
* [emoji.sh](https://gist.github.com/markmandel/546fc099590f1c08fa936795ac9da143). One liner, requests emojis each time, no autocomplete
* [rofimoji](https://github.com/fdw/rofimoji). Python-based, rofi only, can insert directly instead of copy&paste
* [emoji-rofi-menu](https://github.com/rob-a-bolton/emoji-rofi-menu). Rofi only, can insert directly
* [rofi-emoji](https://github.com/hatzel/rofi-emoji/). Python-based (but generates a bash script so Python is not used each time), rofi only, inserts-directly
* [dmenu-fontawesome](https://github.com/4khi1/dmenu-fontawesome). Search an fontawesome icon by name and copy it to the clipboard.

It takes very little time to write so there are probably more 😅
