function update {
	printf '\e[1;34m%-0s\e[m' "Running zypper ref + dup..."
	printf "\n"
	dup
	if `which flatpak > /dev/null 2>&1`; then
		printf '\e[1;34m%-0s\e[m' "Updating Flatpaks..."
		printf "\n"
		flatup
	fi
	if `which apm > /dev/null 2>&1`; then
		printf '\e[1;34m%-0s\e[m' "Updating Atom packages and themes..."
		printf "\n"
		apmup
	fi
	latestopenratried=$(ls $HOME/.openra/maps/ra | grep bleed- | tail -n 1)
	latestinstalled=$(cat /usr/lib/openra/VERSION)
	if [[ ${latestinstalled} == ${latestopenratried} ]]; then
		 mv $HOME/.openra/maps/ra/${latestopenratried}/* $HOME/.openra/maps/ra/${latestinstalled}
	fi
	if which snap > /dev/null 2>&1; then
		printf '\e[1;34m%-0s\e[m' "Updating Snap packages..."
		printf "\n"
		sudo snap refresh
	fi
	if which nix > /dev/null 2>&1; then
		printf '\e[1;34m%-0s\e[m' "Updating Nix packages..."
		printf "\n"
		nixup
	fi
}
