#!/bin/zsh
if [[ -f /usr/bin/code ]]; then
  VSCODE_INSTALLED_VERSION=$(rpm -qi code | grep "Version" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
else
  VSCODE_INSTALLED_VERSION=""
fi
VSCODE_URL=$(wget -cq http://code.visualstudio.com/updates/$(wget -cq http://code.visualstudio.com/updates -O - | cut -d '=' -f 4 | cut -d '/' -f 3 | cut -d '"' -f 1) -O - | grep "rpm-x64" | cut -d '"' -f 10)
VSCODE_LATEST_VERSION=$(echo $VSCODE_URL | cut -d '/' -f 4)

autoload is-at-least

function vscode-install {
  curl -L $VSCODE_URL > /tmp/code-${VSCODE_LATEST_VERSION}.x86_64.rpm
  rpm -i /tmp/code-${VSCODE_LATEST_VERSION}.x86_64.rpm
}

if ! `is-at-least ${VSCODE_LATEST_VERSION} ${VSCODE_INSTALLED_VERSION}`; then
  vscode-install
fi

if ! [[ -f /usr/bin/code ]]; then
	vscode-install
fi
