function cpm {
  sudo cp -a /etc/xdg/menus/{cinnamon,lxde,xfce}-applications.menu /home/fusion809/GitHub/xdg-menus/etc/xdg/menus/
  sudo cp -a /usr/share/desktop-directories/* /home/fusion809/GitHub/xdg-menus/usr/share/desktop-directories/
  cp -a ~/.local/share/applications/* ~/GitHub/xdg-menus/.local/share/applications/
  cp -a ~/.local/share/desktop-directories/* ~/GitHub/xdg-menus/.local/share/desktop-directories
  cp -a ~/.config/menus/applications-kmenuedit.menu ~/GitHub/xdg-menus/.config/menus/
}

function cps {
  cp -a ~/Shell/* ~/GitHub/opensuse-scripts/Shell
  cp -a ~/{.bashrc,.zshrc} ~/GitHub/opensuse-scripts/
  sudo cp -a /root/{Shell,.bashrc,.zshrc} ~/GitHub/opensuse-scripts/root/
}

function cpsh {
  sudo rm /home/makerpm/Shell/{*.sh,cd/*.sh}
  sudo cp -a /home/fusion809/Shell/{*.sh,cd} /home/makerpm/Shell
}

function cpzsh {
	cp -a ~/.oh-my-zsh/themes/{hcompact,hornix}.zsh-theme ~/GitHub/zsh-theme
	cd ~/GitHub/zsh-theme
	push "Updating"
}
