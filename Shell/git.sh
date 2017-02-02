function gitc {
	for i in "$@"
	do
		git clone https://github.com/fusion809/$i.git $GHUB/$i
		pushd $GHUB/$i
		gitsw
		popd
	done
}

# Git shrink
# Taken from http://stackoverflow.com/a/2116892/1876983
function gitsh {
  git reflog expire --all --expire=now
  git gc --prune=now --aggressive
}

# Estimate the size of the current repo
# Taken from http://stackoverflow.com/a/16163608/1876983
function gitsize {
  git gc
  git count-objects -vH
}

function gitssi {
  gitsh && gitsize
}

# Switch to SSH
function gitsw {
  # $1 is the username of the repo
  git remote rm origin
  git remote rm upstream
	CWD=${PWD##*/}
	if [[ "$CWD" =~ ^\. ]]; then
		GWD="${CWD#.}"
	  if [[ -n "$1" ]]
	    then
	      git remote add origin git@github.com:$1/$GWD.git
	      git remote add upstream git@github.com:$1/$GWD.git
	    else
	      git remote add origin git@github.com:fusion809/$GWD.git
	      git remote add upstream git@github.com:fusion809/$GWD.git
	  fi
	else
		if [[ -n "$1" ]]
			then
				git remote add origin git@github.com:$1/$CWD.git
				git remote add upstream git@github.com:$1/$CWD.git
			else
				git remote add origin git@github.com:fusion809/$CWD.git
				git remote add upstream git@github.com:fusion809/$CWD.git
		fi
	fi
}

alias SSH=gitsw
alias gitssh=gitsw
alias gits=gitsw

# Push changes
function pushat {
	git add *.cson LICENSE && git commit -m "$1" && git push origin master
}

function push {
  git add --all && git commit -m "$1" && git push origin master
}

function pushs {
	git commit -m "$1" && git push origin master
}

function pushb {
	if [[ $PWD == /home/fusion809/GitHub/fusion809.github.io ]]; then
		push "$1"
	else
		pushd $FGI
		push "$1"
		popd
	fi
}

# Push GitHub pages changes
function pushp {
  git add --all && git commit -m "$1" && git push -u origin master
}

function pushss {
  push "$1" && gitsh && gitsize
}

# opensuse-scripts
  ## Update opensuse-scripts GitHub repo
  function shup {
    cps && cdos && push "$1" && szsh && cd -
		if [[ $SHELL == /bin/zsh ]] || [[ $SHELL = /usr/bin/zsh ]]; then
			szsh
		elif [[ $SHELL == /bin/bash ]] || [[ $SHELL == /usr/bin/bash ]]; then
			sbash
		fi
  }

	# Menus
	function mup {
		cpm && cdm && push "$1"
	}

#############################################################
# The following script was taken from
# http://stackoverflow.com/a/18915067/1876983
#############################################################
# Sign in with SSH at startup
# Makes contributing to GitHub projects a lot simpler.
if [[ -a $HOME/.ssh/environment ]]
then
  export SSH_ENV=$HOME/.ssh/environment
elif [[ $USER == fusion809 ]]
then
  ssh-keygen -t rsa -b 4096 -C "brentonhorne77@gmail.com"
  export SSH_ENV=$HOME/.ssh/environment
  git config --global user.name "fusion809"
  git config --global user.email "brentonhorne77@gmail.com"
fi

# start the ssh-agent
# Remember, for this to work you need your SSH keys setup
# https://help.github.com/articles/generating-ssh-keys/
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}

if [[ -f "${SSH_ENV}" ]]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
      start_agent;
    }
else
    start_agent;
fi
#############################################################
