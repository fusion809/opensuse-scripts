function zypup {
	zypper refresh && zypper up -y --auto-agree-with-licenses
}

alias zup=zypup
alias zpup=zypup

function zin {
	zypper in $@
}

alias zpin=zin
alias zypin=zin
alias zpi=zin

function ziny {
	zypper in -y "$@"
}
  
alias zpiny=ziny
alias zpiy=ziny

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

function dupv {
	zypper refresh && zypper dup -l --no-allow-vendor-change
}

alias zd=dupv

function dup {
	zypper refresh && zypper dup -l
}

function update {
	dupv && su - fusion809 -c "apm update --no-confirm"
}

function zrr {
	zypper rr "$@"
}

alias zyprr=zrr
