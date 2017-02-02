function flatup {
  flatpak update "$@"
}

function flatin {
  flatpak install "$@"
}

function flatrm {
  flatpak uninstall "$@"
}
