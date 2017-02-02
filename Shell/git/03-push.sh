function git-branch {
	git rev-parse --abbrev-ref HEAD
}

# Push changes
function push {
	git add --all && git commit -m "$1" && git push origin $(git-branch)
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
