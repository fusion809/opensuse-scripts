#!/bin/zsh
if [[ -f /usr/bin/code ]]; then
  VSCODE_INSTALLED_VERSION=$(rpm -qi code | grep "Version" |  cut -d ':' -f 2 | cut -d ' ' -f 2)
else
  VSCODE_INSTALLED_VERSION=""
fi
VSCODE_LATEST_VERSION=$(wget -cq https://github.com/Microsoft/vscode/releases -O - | grep ".tar.gz" | head -n 50 | cut -d '"' -f 2 | cut -d '/' -f 5 | sed 's|.tar.gz||g' | grep "[0-9]" | sort -u | tail -n 1)
VSCODE_URL=https://vscode-update.azurewebsites.net/${VSCODE_LATEST_VERSION}/linux-rpm-x64/stable

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
