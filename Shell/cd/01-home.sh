if ! [[ -f /usr/bin/git ]]; then
    zpi git
fi

if ! [[ -f /usr/bin/rpmdev-setuptree ]]; then
    zpi rpmdevtools
fi

if ! [[ -d $HOME/rpmbuild ]]; then
    rpmdev-setuptree
fi

function cdrpm {
    cd $HOME/rpmbuild/$1
}

# cd to SPECS
function cdsp {
    cdrpm "SPECS/$1"
}
