# Install Atom packages
function apmi {
  apm install $@
}

alias apmin=apmi

# Remove Atom packages
function apmr {
  apm remove $@
}

alias apmrm=apmr

# Update Atom packages
function apmup {
  apm update --no-confirm
}

alias apmu=apmup
