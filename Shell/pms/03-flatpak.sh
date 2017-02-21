function flatup {
	if [[ -f /usr/bin/flatpak ]]; then
		flatpak update "$@"
	else
		printf '\e[1;31m%-0s\e[m' "Flatpak ain't installed mate"
		printf "\n"
	fi
}

function flatin {
	flatpak install "$@"
}

function flatrm {
	flatpak uninstall "$@"
}
