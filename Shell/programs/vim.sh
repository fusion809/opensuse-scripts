if ! [[ -f /usr/bin/vim ]]; then
	zypin vim gvim-gtk2 gvim-gtk3
fi

sudo ln -sf /usr/bin/gvim-gtk2 /usr/bin/gvim
