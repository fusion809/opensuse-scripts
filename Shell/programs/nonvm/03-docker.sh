if ! [[ -f /usr/bin/docker ]]; then
	zypin docker
	sudo gpasswd -a $USER docker
	sudo systemctl enable docker
	sudo systemctl start docker
fi

function run {
	sudo docker run -i -t $1 /bin/bash
}
