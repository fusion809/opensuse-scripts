#!/bin/zsh
BIN="/opt/messengerfordesktop/messengerfordesktop"
if [[ -f $BIN ]]; then
  MESSENGER_INSTALLED_VERSION=$(rpm -qi messengerfordesktop | grep "Version" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
fi
MESSENGER_LATEST_VERSION=$(wget -q "https://api.github.com/repos/Aluxian/Messenger-for-Desktop/releases/latest"  -O - | grep -E "https.*messengerfordesktop-.*x86_64.rpm" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

autoload is-at-least

function messengerfordesktop-install {
  # printf "${MESSENGER_LATEST_VERSION}" >> $HOME/.local/share/messengerfordesktop-${MESSENGER_LATEST_VERSION} is in case the Atom package is broken like Atom 1.12.8
  sudo zypper in -y https://github.com/Aluxian/Messenger-for-Desktop/releases/download/v${MESSENGER_LATEST_VERSION}/messengerfordesktop-${MESSENGER_LATEST_VERSION}-linux-x86_64.rpm || printf "${MESSENGER_LATEST_VERSION}" >> $HOME/.local/share/messengerfordesktop-${MESSENGER_LATEST_VERSION}
}

if ! `is-at-least $MESSENGER_LATEST_VERSION ${MESSENGER_INSTALLED_VERSION:-0}`; then
  if ! [[ -f $HOME/.local/share/messengerfordesktop-${MESSENGER_LATEST_VERSION} ]]; then
    messengerfordesktop-install
  fi
fi

if ! [[ -f $BIN ]]; then
	messengerfordesktop-install
fi
