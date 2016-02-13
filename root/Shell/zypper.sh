function update {
	zypper up -y
}

alias zypup=update

function zypin {
	zypper in $@
}

function zyprm {
	zypper rm $@
}
