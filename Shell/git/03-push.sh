function git-branch {
	git rev-parse --abbrev-ref HEAD
}

# Push changes
function push {
  if `printf "$PWD" | grep 'AUR' > /dev/null 2>&1`; then
    mksrcinfo
  fi
  git add --all                                        # Add all files to git
  git commit -m "$1"                                   # Commit with message = argument 1
  git push origin $(git-branch)                        # Push to the current branch
}

# Estimate the size of the current repo
# Taken from http://stackoverflow.com/a/16163608/1876983
function gitsize {
  git gc
  git count-objects -vH
}

# Git shrink
# Taken from http://stackoverflow.com/a/2116892/1876983
function gitsh {
  git reflog expire --all --expire=now
  git gc --prune=now --aggressive
}

function pushss {
  push "$1" && gitsh && gitsize
}
