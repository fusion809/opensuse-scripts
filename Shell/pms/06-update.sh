function update {
    printf '\e[1;34m%-0s\e[m' "Running zypper update..."
    printf "\n"
    zypup
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
}
