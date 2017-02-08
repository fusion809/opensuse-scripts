if ! [[ -f /usr/bin/docker ]]; then
	zypar \
	    https://yum.dockerproject.org/repo/main/opensuse/13.2/ \
	    docker-main
	zypin docker-engine
	sudo gpasswd -a $USER docker
	sudo systemctl enable docker
	sudo systemctl start docker
fi

function run {
	sudo docker run -i -t $1 /bin/bash
}
