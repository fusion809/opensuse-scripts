# Mount Manjaro
function mmanj {
	if ! `grep -qs "/mnt/proc" /proc/mounts`; then
	  sudo mount -t proc proc /mnt/proc
	  sudo mount --rbind /dev /mnt/dev
	  sudo mount --make-rslave /mnt/dev
	  sudo mount --rbind /sys /mnt/sys
	  sudo mount --make-rslave /mnt/sys
	  sudo mount --rbind /tmp /mnt/tmp
	  sudo cp -L /etc/resolv.conf /mnt/etc
	fi
}

mmanj

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
