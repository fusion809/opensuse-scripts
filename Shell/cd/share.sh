#	- .local
	# - share
	function cdls {
		cd "$LS/$1"
	}
    # - applications
		function cdap {
			cdls "applications/$1"
		}

			function cdapa {
				cdap "Atom/$1"
			}

			function cdgap {
				cdap "gVim/$1"
			}

			function cdvap {
				cdap "VirtualBox"
			}

		function cddd {
			cdls "desktop-directories/$1"
		}

		function cdi {
			cdls "icons/$1"
		}
