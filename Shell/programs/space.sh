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

function datsus {
	datsu=$(du -sh /data/sudoers)

	printf '\e[1;34m%-0s\e[m' "$datsu" 
        printf "\n"
}

function datts {
	datt=$(du -sh /data/Textbooks)

	printf '\e[1;34m%-0s\e[m' "$datt" 
        printf "\n"
}

function datvs {
	datv=$(du -sh /data/Videos)

	printf '\e[1;31m%-0s\e[m' "$datv" 
        printf "\n"
}

function datvims {
	datvim=$(du -sh /data/.vim)

	printf '\e[1;34m%-0s\e[m' "$datvim" 
        printf "\n"
}

function datvimrs {
	datvimr=$(du -sh /data/.vimrc)

	printf '\e[1;34m%-0s\e[m' "$datvimr" 
        printf "\n"
}

function datvms {
	datvm=$(du -sh /data/"VirtualBox VMs")

	printf '\e[1;31m%-0s\e[m' "$datvm" 
        printf "\n"
}

export VM=/data/"VirtualBox VMs"

function vms {
	unset $G
	unset $JI
	unset $SIZE
	unset $NOG
	JI=$(du -sh $VM/$1)
	SIZE=$(echo $JI | cut -d '/' -f 1)
	G=$(echo $SIZE | grep "G")
	NOG=$(echo $G | cut -d 'G' -f 1)

	if ! [[ -z "${G// }" ]]; then
		if (( $NOG > 10 )); then
			printf '\e[1;31m%-0s\e[m' "$JI"
		else
			printf '\e[1;37m%-0s\e[m' "$JI"
		fi
	else
		printf '\e[1;34m%-0s\e[m' "$JI"
	fi

	printf "\n"
}
	
function datvmss {
	vms "Arch Linux"
	vms "ArchOld"
	vms "CentOS 7"
	vms "Debian 8"
	vms "deepin 15.1"
	vms "deepin 15.3"
	vms "Fedora 24"
	vms "Fedora 25"
	vms "FreeBSD 10.3"
	vms "FreeBSD 11.0"
	vms "Gentoo Linux"
	vms "Gentoo Linux (multilib)"
	vms "ISOs"
	vms "KDE Neon Unstable"
	vms "Linux Mint 18.1"
	vms "Mageia 5"
	vms "
}

function space {
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
	datsrs
	datsus
	datts
	datvs
	datvims
	datvimrs
	datvms
	datvmss
}
