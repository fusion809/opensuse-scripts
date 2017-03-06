VERSION=$(cat /etc/os-release | grep VERSION_ID | cut -d '"' -f 2)

function osver {
	printf "$VERSION\n"
}
