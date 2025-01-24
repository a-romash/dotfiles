#!/usr/bin/env bash

wallpaper_path=$(readlink "$HOME/.current_wallpaper.png")

check_file() {
   
  if [ ! -f "$1" ]; then
    echo "File $1 not found!"
    exit 1
  fi
}

check_file "$wallpaper_path"


for opt in $@; do
  case "$opt" in
      no-tty)
        # Do not change terminal colors
        sleep 0.2
        wal -i "$wallpaper_path" -s -t -b colorz
      ;;
      *)
        sleep 0.2
        wal -i "$wallpaper_path" -b colorz
      ;;
  esac
done
