function netc {
	sudo netconfig -f update
}

case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
  [23]) printf "Networking seems to be working fine...\n";;
  *) netc && printf "The net should be working now\n";;
esac
