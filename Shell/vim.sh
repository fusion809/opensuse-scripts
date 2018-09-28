if ! command -v gvim > /dev/null 2>&1 ; then
	zpi vim gvim-gtk2 gvim-gtk3
	sudo ln -sf /usr/bin/gvim-gtk2 /usr/bin/gvim
fi
