function update {
	printf '\e[1;34m%-0s\e[m' "Running zypper update..."
	printf "\n"
	zypup
	printf '\e[1;34m%-0s\e[m' "Updating Flatpaks..."
	printf "\n"
	flatup
	printf '\e[1;34m%-0s\e[m' "Updating Atom packages and themes..."
	printf "\n"
	apmup
}
