export NIX_PATH=nixpkgs=/nix/var/nix/profiles/per-user/fusion809/channels/nixpkgs
export NIX_SSL_CERT_FILE=/etc/ssl/ca-bundle.pem

function nixs {
    nix search "$@"
}

function nixcg {
    nix-collect-garbage -d
}

function nixi {
    nix-env -i "$@"
}

function nixr {
    nix-env --uninstall "$@"
}
