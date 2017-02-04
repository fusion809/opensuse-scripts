# Mount Fedora
if ! `grep -qs "/mnt" /proc/mounts`; then
  sudo mount /dev/fedora/root /mnt
  sudo mount -t proc proc /mnt/proc
  sudo mount --rbind /dev /mnt/dev
  sudo mount --make-rslave /mnt/dev
  sudo mount --rbind /sys /mnt/sys
  sudo mount --make-rslave /mnt/sys
  sudo mount --rbind /tmp /mnt/tmp
  sudo cp -L /etc/resolv.conf /mnt/etc
else
  printf "/dev/sdb3 is mounted on /mnt\n"
fi
