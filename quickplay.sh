echo "enter your search:"
read msg
echo "do you want to keep the file? [yes/no]"
read choice
echo "do you want to loop over the file [yes/no]"
read choice2
youtube-dl "ytsearch: $msg" -o '%(title)s.%(ext)s' --format mp4
vid=$(youtube-dl "ytsearch: $msg" --get-filename -o '%(title)s.%(ext)s'  --format mp4)
if [ "$choice2" = "yes" ]
then
   mpv "$vid" --loop
else
   mpv "$vid"
fi

if [ "$choice" = "yes" ]
then
    echo "DONE"
else
    rm -rf "$vid"
    echo "DONE"
fi
