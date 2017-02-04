# Install software from binary packages in available repos
# Alternatively a URL to the RPM binary can be used as an input
function zypin {
	sudo zypper in -y $@
}
alias szpi=zypin
alias zpi=zypin

# Remove software
function zyprm {
	sudo zypper rm -y $@
}
alias szpr=zyprm
alias zpr=zyprm

# Add zypper repo.
# First input is the URL to the repo, e.g.,
# http://download.opensuse.org/repositories/home:/Bumblebee-Project:/nVidia:/310.40/openSUSE_Tumbleweed/
# second input is a name for the repo, e.g., I used home:Bumblebee-Project:nVidia:310.40 for the
# aforementioned example.
function zyprp {
	sudo zypper ar -f $1 $2
}

alias zprp=zyprp

# Install software from src.rpm packages in available repos
function zypsi {
	sudo zypper si $@
}

alias zpsi=zypsi

# Update all software on one's system
function zypup {
	sudo zypper refresh && sudo zypper up -y --auto-agree-with-licenses
}

alias zpup=zypup
alias zup=zypup

# Dist upgrade
function zypdup {
	sudo zypper refresh && sudo zypper dup
}

alias dup=zypdup

# Remove repository
function zyprr {
	sudo zypper rr $@
}

alias zprr=zyprr

# Add repository
function zypar {
	sudo zypper ar -f $@
}

alias zpar=zypar

function zyps {
	zypper se "$@"
}

alias zps=zyps
