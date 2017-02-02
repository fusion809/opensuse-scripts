function octcli {
  octave --no-gui
}

function octe {
  octave --eval "$@"
}

function ctof {
  octe "32+1.8*$1"
}

function ftoc {
  octe "($1-32)/1.8"
}

function kgtolb {
  octe "2.20462*$1"
}

function lbtokg {
  octe "$1/2.20462"
}
