export BASE_URL="https://raw.githubusercontent.com/fusion809"

function trigger {
  bash <(curl -s $BASE_URL/AppImages/master/trigger.sh) "$1"
}

function vimaup {
  bash <(curl -s $BASE_URL/GVim.AppImage/master/trigger.sh)
}

function codeup {
  bash <(curl -s $BASE_URL/Code-OSS.AppImage/master/trigger.sh)
}

function emacsup {
  bash <(curl -s $BASE_URL/Emacs.AppImage/master/trigger.sh)
}
