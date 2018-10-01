export PATH=/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games:/usr/sbin/:/sbin
if [[ -d ~/.guix-profile ]]; then
	export GUIX_PROFILE="`echo ~`/.guix-profile" ; \
	source $GUIX_PROFILE/etc/profile
fi
