echo "enter your search:"
read msg
echo "do you want to keep the file? [yes/no]"
read choice
youtube-dl "ytsearch: $msg" -o '%(title)s.%(ext)s' --format mp4
vid=$(youtube-dl "ytsearch: $msg" --get-filename -o '%(title)s.%(ext)s'  --format mp4)
mpv "$vid"

if [ "$choice" = "yes" ]
then
    echo "DONE"
else
    rm -rf "$vid"
    echo "DONE"
fi
