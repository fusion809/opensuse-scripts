function pk {
	for i in "$@"
	do
		sudo kill -9 $i
	done
}
