function cpm {
  sudo cp -a /etc/xdg/menus/{cinnamon,lxde,xfce}-applications.menu /home/fusion809/GitHub/xdg-menus/etc/xdg/menus/
  sudo cp -a /usr/share/desktop-directories/* /home/fusion809/GitHub/xdg-menus/usr/share/desktop-directories/
  cp -a $HOME/.local/share/applications/* $HOME/GitHub/xdg-menus/.local/share/applications/
  cp -a $HOME/.local/share/desktop-directories/* $HOME/GitHub/xdg-menus/.local/share/desktop-directories
  cp -a $HOME/.config/menus/applications-kmenuedit.menu $HOME/GitHub/xdg-menus/.config/menus/
}

function cps {
  cp -a $HOME/Shell/* $HOME/GitHub/opensuse-scripts/Shell
  cp -a $HOME/{.bashrc,.zshrc} $HOME/GitHub/opensuse-scripts/
  sudo cp -a /root/{Shell,.bashrc,.zshrc} $HOME/GitHub/opensuse-scripts/root/
}

function cpsh {
  sudo rm /home/makerpm/Shell/{*.sh,cd/*.sh}
  sudo cp -a /home/fusion809/Shell/{*.sh,cd} /home/makerpm/Shell
}

function cpzsh {
	cp -a $HOME/.oh-my-zsh/themes/{hcompact,hornix}.zsh-theme $HOME/GitHub/zsh-theme
	cd $HOME/GitHub/zsh-theme
	push "Updating"
}
