function roots {
	root=$(df -h /)
	root1=$(echo $root | head -n 1)
	root2=$(echo $root | tail -n 1)

	printf '\e[1;31m%-0s\e[m' "$root1"
	printf "\n"

	printf '\e[1;34m%-0s\e[m' "$root2"
	printf "\n"
}

function mnts {
	mnt=$(df -h /mnt | tail -n 1)

	printf '\e[1;33m%-0s\e[m' "$mnt"
	printf "\n"
}

function datas {
	data=$(df -h /data | tail -n 1)

	printf '\e[1;32m%-0s\e[m' "$data"
	printf "\n"
}

function datats {
	datat=$(du -sh /data/.atom)

	printf '\e[1;36m%-0s\e[m' "$datat"
	printf "\n"
}

function datcs {
	datc=$(du -sh /data/.config)

	printf '\e[1;32m%-0s\e[m' "$datc"
	printf "\n"
}

function datds {
	datd=$(du -sh /data/Documents)

	printf '\e[1;34m%-0s\e[m' "$datd"
	printf "\n"
}

function datgs {
	datg=$(du -sh /data/GitHub)

	printf '\e[1;33m%-0s\e[m' "$datg"
	printf "\n"
}

function datls {
	datl=$(du -sh /data/.local)

	printf '\e[1;32m%-0s\e[m' "$datl"
	printf "\n"
}

function datms {
	datm=$(du -sh /data/Music)

	printf '\e[1;37m%-0s\e[m' "$datm"
	printf "\n"
}

function datps {
	datp=$(du -sh /data/Pictures)

	printf '\e[1;36m%-0s\e[m' "$datp"
	printf "\n"
}

function datrs {
	datr=$(du -sh /data/RPMS)

	printf '\e[1;36m%-0s\e[m' "$datr"
	printf "\n"
}

function datshs {
	datsh=$(du -sh /data/Shell)

	printf '\e[1;34m%-0s\e[m' "$datsh" 
        printf "\n"
}

function datsrs {
	datsr=$(du -sh /data/SRPMS)

	printf '\e[1;34m%-0s\e[m' "$datsr" 
        printf "\n"
}	

function space {
	datsu=$(du -sh /data/sudoers)
	datt=$(du -sh /data/Textbooks)
	datv=$(du -sh /data/Videos)
	datvim=$(du -sh /data/.vim)
	datvimr=$(du -sh /data/.vimrc)
	datvm=$(du -sh /data/"VirtualBox VMs")
	datvms=$(du -sh /data/"VirtualBox VMs"/*)

	roots
	mnts
	printf '\e[1;31m%-0s\e[m' "Folders are now going to be shown"
	printf "\n"
	datas
	datats
	datcs
	datds
	datgs
	datls
	datms
	datps
	datrs
	datshs
}
