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

if ! [[ -d /data ]]; then
	sudo mkdir -p /data
fi

function disks {
	df -h /
	df -h /mnt | tail -n 1
	df -h /data | tail -n 1
}
