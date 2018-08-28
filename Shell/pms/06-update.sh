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
	latest-openra-tried=$(ls $HOME/.openra/maps/ra | grep bleed- | tail -n 1)
	latest-installed=$(cat /usr/lib/openra/VERSION)
	if [[ ${latest-installed} == ${latest-openra-tried} ]]; then
		 mv $HOME/.openra/maps/ra/${latest-openra-tried}/* $HOME/.openra/maps/ra/${latest-installed}
	fi
	sudo snap refresh
}
