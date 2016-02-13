# file system structure
# ~/

for i in ~/Shell/cd/*.sh
do
	. "$i"
done


# Non-hidden

	# - Desktop
		function cdd {
			cd ~/Desktop
		}

	# - Downloads
		function cddo {
			cd ~/Downloads
		}
