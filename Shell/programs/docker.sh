if ! [[ -f /usr/bin/docker ]]; then
	sudo zypper addrepo \
	    https://yum.dockerproject.org/repo/main/opensuse/13.2/ \
	    docker-main
	sudo zypper refreshy
	sudo zypper install -y docker
	sudo gpasswd -a $USER docker
	sudo systemctl enable docker
	sudo systemctl start docker
fi

function run {
	sudo docker run -i -t $1 /bin/bash
}
