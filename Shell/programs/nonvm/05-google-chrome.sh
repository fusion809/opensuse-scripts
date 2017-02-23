function gin {
	if ! [[ -f "/usr/bin/google-$1" ]]; then
		zpi https://dl.google.com/linux/direct/google-$1-stable_current_x86_64.rpm
	fi
}

gin chrome
