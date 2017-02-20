if `sudo cat /etc/sudoers | grep %wheel | grep "^#" > /dev/null >2&1`; then
  sudo sed -i -e "s/^#.*%wheel/%wheel/g" /etc/sudoers
  sudo gpasswd -a fusion809 wheel
fi
