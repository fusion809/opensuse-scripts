function zypin {
        sudo zypper install $@
}

function zyprm {
        sudo zypper remove $@
}

function update {
        sudo zypper update
}

alias zypup=update
