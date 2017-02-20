if ! [[ -f /usr/bin/spectool ]]; then
  zpar http://download.opensuse.org/repositories/devel:tools/openSUSE_Tumbleweed/devel:tools.repo
  sudo zypper refresh
  zpi spectool
fi
