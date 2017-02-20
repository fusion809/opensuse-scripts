if `/sbin/lspci | grep Broadcom >/dev/null 2>&1`; then
  BROADOUT=$(rpm -qi broadcom-wl)
  if [[ $BROADOUT == "package broadcom-wl is not installed" ]]; then
    sudo zypper ar -f -n packman http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
    sudo zypper refresh
    zpi broadcom-wl
    sudo modprobe -a wl
  fi
else
  printf "$HOME/Shell/programs/nonvm/03-broadcom.sh has detected that this PC does not required broadcom-wl\n"
fi
