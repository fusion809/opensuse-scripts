function flatup {
  if [[ -f /usr/bin/flatpak ]]; then
  	flatpak update "$@"
  else
	printf "Flatpak ain't installed mate\n"

  fi
}

function flatin {
  flatpak install "$@"
}

function flatrm {
  flatpak uninstall "$@"
}
