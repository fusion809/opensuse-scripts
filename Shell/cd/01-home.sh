if ! [[ -f /usr/bin/git ]]; then
	zpi git
fi

if ! [[ -d $HOME/AUR ]]; then
	mkdir -p $HOME/AUR
fi

function cda {
	cd $HOME/AUR/$1
}

if ! [[ -d $HOME/Documents ]]; then
	mkdir -p $HOME/Documents
fi

function cdd {
	cd $HOME/Documents/$1
}

function cdcfe {
	cdd "CodeLite/CPP-Math-Projects/Simple-Pendulum/$1"
}

if ! [[ -d $HOME/Downloads ]]; then
	mkdir -p $HOME/Downloads
fi

function cddo {
	cd $HOME/Downloads/$1
}

function cdm {
	cd $HOME/Music/$1
}

if ! [[ -d $HOME/Programs ]]; then
	mkdir -p $HOME/Programs
fi

function cdp {
	cd $HOME/Programs/$1
}

function cdpr {
	cdp "rpm/$1"
}

function cdpd {
	cdp "Deb/$1"
}

function cdpa {
	cdp "AppImages/$1"
}

if ! [[ -f /usr/bin/rpmdev-setuptree ]]; then
	zpi rpmdevtools
fi

if ! [[ -d $HOME/rpmbuild ]]; then
	rpmdev-setuptree
fi

function cdrpm {
	cd $HOME/rpmbuild/$1
}

# cd to SPECS
function cdsp {
	cdrpm "SPECS/$1"
}

# cd to Shell
function cdsh {
	cd $HOME/Shell/$1
}

function cdv {
	cd $HOME/Videos
}

function cdvs {
	cd $HOME/Videos/SO
}

if ! [[ -d $HOME/"VirtualBox VMs" ]]; then
	mkdir -p $HOME/"VirtualBox VMs"
fi

function cdvi {
	cd $HOME/"VirtualBox VMs"/ISOs
}

if ! [[ -d $HOME/OBS ]]; then
	mkdir -p $HOME/OBS
fi

function cdobs {
	cd $HOME/OBS/$1
}

function cdobsh {
	cdobs "home:fusion809/$1"
}
