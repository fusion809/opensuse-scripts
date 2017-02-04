function zypup {
	zypper refresh && zypper up -y --auto-agree-with-licenses
}

function update {
	zypup && su - fusion809 -c "apm update --no-confirm"
}

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
