export NIX_PATH=$HOME/.nixpkgs
export NIX_SSL_CERT_FILE=/etc/ssl/ca-bundle.pem

function nixup {
    nix-channel --update && nix-env --upgrade
}

function nixr {
    nix-env --uninstall "$@"
}

function nixi {
    nix-env -i "$@"
}
