# file system structure
# $HOME/

for i in $HOME/Shell/cd/*.sh
do
	. "$i"
done


# Non-hidden

	# - Desktop
		function cdd {
			cd $HOME/Desktop
		}

	# - Downloads
		function cddo {
			cd $HOME/Downloads
		}
