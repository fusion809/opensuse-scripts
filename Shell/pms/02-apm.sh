# Install Atom packages
function apmi {
	apm install $@ --no-confirm
}

alias apmin=apmi
alias api=apmi

# Remove Atom packages
function apmr {
	apm remove $@
}

alias apmrm=apmr
alias apr=apmr

# Update Atom packages
function apmup {
	apm update --no-confirm
}

alias apmu=apmup
alias apu=apmup
