function lcom {
    git log | head -n 1 | cut -d ' ' -f 2 | xclip -sel clip
}

function scom {
    if `ls * | grep "\.spec" > /dev/null 2>&1`; then
         cat $(ls * | grep "\.spec" | head -n 1) | grep "define commit" | cut -d ' ' -f 3 | xclip -sel clip
    elif [[ -n $1 ]]; then
         cat $1 | grep "define commit" | cut -d ' ' -f 3 | xclip -sel clip
    fi
}
