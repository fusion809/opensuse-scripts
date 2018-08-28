function update {
	printf '\e[1;34m%-0s\e[m' "Running zypper ref + dup..."
	printf "\n"
	dup
	printf '\e[1;34m%-0s\e[m' "Updating Flatpaks..."
	printf "\n"
	if `which flatpak > /dev/null 2>&1`; then
		 flatup
	fi
	printf '\e[1;34m%-0s\e[m' "Updating Atom packages and themes..."
	printf "\n"
	if `which apm > /dev/null 2>&1`; then
		 apmup
	fi
	latestopenratried=$(ls $HOME/.openra/maps/ra | grep bleed- | tail -n 1)
	latestinstalled=$(cat /usr/lib/openra/VERSION)
	if [[ ${latestinstalled} == ${latestopenratried} ]]; then
		 mv $HOME/.openra/maps/ra/${latestopenratried}/* $HOME/.openra/maps/ra/${latestinstalled}
	fi
	sudo snap refresh
}
