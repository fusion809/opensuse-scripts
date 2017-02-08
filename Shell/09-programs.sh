for i in $HOME/Shell/programs/*.sh
do
  . "$i"
done

if `cat /proc/cpuinfo | grep hypervisor >/dev/null 2>&1`
	for i in $HOME/Shell/programs/nonvm/*.sh
	do
	  . "$i"
	done
fi
