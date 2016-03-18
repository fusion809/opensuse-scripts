# Create GitHub directory
mkdir ~/GitHub

# Clone opensuse-scripts repo
git clone https://github.com/fusion809/opensuse-scripts ~/GitHub/opensuse-scripts

# Copy across
cp -a ~/GitHub/opensuse-scripts/{Shell,.bashrc,.zshrc} ~/
sudo cp -a ~/GitHub/opensuse-scripts/root/{Shell,.bashrc,.zshrc} /root/

# Get openssh, if not pre-installed and Zsh
sudo zypper in -y openssh zsh

# git clone oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# Get my self-made zsh-themes
git clone https://github.com/fusion809/zsh-theme ~/GitHub/zsh-theme
cp -a ~/GitHub/zsh-theme/*.zsh-theme ~/.oh-my-zsh/themes/

# Get zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
