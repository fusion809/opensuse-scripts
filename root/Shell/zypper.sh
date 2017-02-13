function zypup {
	zypper refresh && zypper up -y --auto-agree-with-licenses
}

alias zup=zypup
alias zpup=zypup

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

alias zpr=zrm
alias zprm=zrm
alias zypr=zrm
alias zyprm=zrm

function zrmy {
	zypper rm -y "$@"
}

function dup {
	zypper dup
}

alias zd=dup

function zrr {
	zypper rr "$@"
}

alias zyprr=zrr
