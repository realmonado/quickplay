echo "enter your search:"
read msg
youtube-dl "ytsearch: $msg" -o '%(title)s.%(ext)s' --format mp4
vid=$(youtube-dl "ytsearch: $msg" --get-filename -o '%(title)s.%(ext)s'  --format mp4)
mpv "$vid"
rm -rf "$vid"
