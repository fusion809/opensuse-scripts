function zypin {
        sudo zypper install $@
}

alias szpi=zypin

function zyprm {
        sudo zypper remove $@
}

alias szpr=zyprm

function update {
        sudo zypper update
}

alias zypup=update
alias szpu=update
