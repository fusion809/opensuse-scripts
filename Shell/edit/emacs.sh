function emacs-appimage {
	if ! [[ -f /usr/local/bin/emacs ]]; then
	  FILENAME=$(curl -sL https://dl.bintray.com/fusion809/AppImages/ | grep "GNU_Emacs" | grep "\.AppImage<" | cut -d '"' -f 4 | cut -d ':' -f 2 | head -n 1)
	  VERSION=$(echo $FILENAME | cut -d '-' -f 2)
	  if ! [[ -f $HOME/Programs/AppImages/$FILENAME ]]; then
	    printf "Creating $HOME/Programs/AppImages directory...\n"
	    if ! [[ -d $HOME/Programs/AppImages ]]; then
	      mkdir -p $HOME/Programs/AppImages
	    fi
   	 printf "Downloading GNU Emacs $VERSION AppImage to $HOME\n"
	    curl -L "https://dl.bintray.com/fusion809/AppImages/$FILENAME" > $HOME/Programs/AppImages/$FILENAME
  	fi
  	# Create executable script in /usr/local/bin
 	 echo -e "#\!/bin/sh\n\"$HOME/Programs/AppImages/GNU_Emacs-$VERSION-x86_64.AppImage\" \"\$@\"" | sudo tee /usr/local/bin/emacs
 	 # Create desktop config file
	  echo -e "[Desktop Entry]\nName=GNU Emacs\nGenericName=Text Editor\nComment=Edit text\nMimeType=text/english;text/plain;text/x-makefile;text/x-c++hdr;text/x-c++src;text/x-chdr;text/x-csrc;text/x-java;text/x-moc;text/x-pascal;text/x-tcl;text/x-tex;application/x-shellscript;text/x-c;text/x-c++;\nExec=\"$HOME/Programs/AppImages/GNU_Emacs-$VERSION-x86_64.AppImage\" %U\nIcon=emacs\nType=Application\nTerminal=false\nCategories=Development;TextEditor;\nStartupWMClass=Emacs\nKeywords=Text;Editor;\nX-Desktop-File-Install-Version=0.23\nTryExec=\"$HOME/Programs/AppImages/GNU_Emacs-$VERSION-x86_64.AppImage\"" > $HOME/.local/share/applications/appimagekit-emacs.desktop
	fi
}

for i in $HOME/Shell/edit/emacs/*.sh
do
  . "$i"
done
