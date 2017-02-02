# Cut $1 seconds off $2 and (if provided) save it as $3
function cutffmpeg {
  if ! [[ -n $3 ]]; then
    ffmpeg -ss $1 -i $2 -vcodec copy -acodec copy $2
  else
    ffmpeg -ss $1 -i $2 -vcodec copy -acodec copy $3
  fi
}
