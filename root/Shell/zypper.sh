function update {
	zypper up -y && su - fusion809 -c "apm update"
}

alias zypup=update

function zin {
	zypper in $@
}

function ziny {
	zypper in -y "$@"
}

function zrm {
	zypper rm $@
}

function zrmy {
	zypper rm -y "$@"
}

function dup {
	zypper dup
}

alias zd=dup
