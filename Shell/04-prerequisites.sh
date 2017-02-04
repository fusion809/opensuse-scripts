# git
if ! [[ -f /usr/bin/git ]]; then
	zpi git
fi

# hub
if ! [[ -f /usr/bin/hub ]]; then
	zpi hub
fi

# openSUSE command-line client
if ! [[ -f /usr/bin/osc ]]; then
	zpi -y osc
fi

# rpmbuild and rpmdevtools
if ! [[ -f /usr/bin/rpmbuild ]]; then
	zpi rpmbuild rpmdevtools
fi

# xclip
if ! [[ -f /usr/bin/xclip ]]; then
	zpi xclip
fi
