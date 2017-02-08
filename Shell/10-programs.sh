for i in $HOME/Shell/programs/*.sh
do
  . "$i"
done

# Test if running in VM - test is from http://unix.stackexchange.com/questions/3685/find-out-if-the-os-is-running-in-a-virtual-environment
if ! `cat /proc/cpuinfo | grep hypervisor >/dev/null 2>&1`; then
	for i in $HOME/Shell/programs/nonvm/*.sh
	do
	  . "$i"
	done
fi
