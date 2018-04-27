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

function cdch {
    cd $HOME/Chem/$1
}

function cd2d {
    cdch "2D/$1"
}

function cd3d {
    cdch "3D/$1"
}

function cdd {
	cd $HOME/Documents/$1
}

function cdcfe {
	cdd "CodeLite/CPP-Math-Projects/$1"
}

function cdtx {
    cdd "Text files/$1"
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

function cdpe {
    cdp "exe/$1"
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
	cd $HOME/Videos/$1
}

function cdvs {
	cd $HOME/Videos/SO
}

function cdvy {
	cdv "YouTube/$1"
}

if ! [[ -d $HOME/"VirtualBox VMs" ]]; then
	mkdir -p $HOME/"VirtualBox VMs"
fi

function cdvm {
	cd $HOME/"VirtualBox VMs"/$1
} 

function cdvi {
	cdvm "ISOs/$1"
}

function cdvil {
    cdvi "Linux/$1"
}

function cdvid {
    cdvil "Debian/$1"
}
 
function cdviu {
    cdvil "Ubuntu/$1"
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

function cdpi {
    cd $HOME/Pictures/$1
}

