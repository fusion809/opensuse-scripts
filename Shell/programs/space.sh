function space {
	root=$(df -h /)
	root1=$(echo $root | head -n 1)
	root2=$(echo $root | tail -n 1)
	mnt=$(df -h /mnt | tail -n 1)
	data=$(df -h /data | tail -n 1)
	datat=$(du -sh /data/.atom)
	datc=$(du -sh /data/.config)
	datd=$(du -sh /data/Documents)
	datg=$(du -sh /data/GitHub)
	datl=$(du -sh /data/.local)
	datm=$(du -sh /data/Music)
	datp=$(du -sh /data/Pictures)
	datr=$(du -sh /data/RPMS)
	datsc=$(du -sh /data/*.gz)
	datsh=$(du -sh /data/Shell)
	datsr=$(du -sh /data/SRPMS)
	datsu=$(du -sh /data/sudoers)
	datt=$(du -sh /data/Textbooks)
	datv=$(du -sh /data/Videos)
	datvim=$(du -sh /data/.vim)
	datvimr=$(du -sh /data/.vimrc)
	datvm=$(du -sh /data/"VirtualBox VMs")
	datvms=$(du -sh /data/"VirtualBox VMs"/*)

	printf '\e[1;31m%-0s\e[m' "$root1"
	printf "\n"
	printf '\e[1;34m%-0s\e[m' "$root2"
	printf "\n"
	printf '\e[1;33m%-0s\e[m' "$mnt"
	printf "\n"
	printf '\e[1;32m%-0s\e[m' "$data"
	printf "\n"
	printf '\e[1;31m%-0s\e[m' "Folders are now going to be shown"
	printf "\n"
	printf '\e[1;36m%-0s\e[m' "$datat"
	printf "\n"
	printf '\e[1;32m%-0s\e[m' "$datc"
	printf "\n"
}
