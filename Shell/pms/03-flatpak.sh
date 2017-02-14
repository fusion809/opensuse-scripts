function flatup {
  if [[ -f /usr/bin/flatpak ]]; then
  	flatpak update "$@"
  else
	printf "Flatpak ain't installed mate"
  fi
}

function flatin {
  flatpak install "$@"
}

function flatrm {
  flatpak uninstall "$@"
}
