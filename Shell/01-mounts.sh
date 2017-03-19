function mfunt {
	if ! `grep -qs "/funtoo/proc" /proc/mounts`; then
		sudo mount -t proc proc /funtoo/proc
		sudo mount --rbind /dev /funtoo/dev
		sudo mount --make-rslave /funtoo/dev
		sudo mount --rbind /sys /funtoo/sys
		sudo mount --make-rslave /funtoo/sys
		sudo mount --rbind /tmp /funtoo/tmp
		sudo cp -L /etc/resolv.conf /funtoo/etc
	fi
}

mfunt

if ! [[ -d /data ]]; then
	sudo mkdir -p /data
fi
