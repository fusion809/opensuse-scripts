function update {
	zypper up -y && su - fusion809 -c "apm update"
}

alias zypup=update

function zypin {
	zypper in $@
}

function zyprm {
	zypper rm $@
}

function dup {
	zypper dup
}
