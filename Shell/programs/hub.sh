# check for and install hub
if ! [[ -f /usr/bin/hub ]]; then
  zypin hub
  szsh
fi
