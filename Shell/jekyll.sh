function cdfgi {
  cd $FGI
}

function jekex {
  cd $FGI
  bundle exec jekyll serve -I --future $@
}

function lastmod {
  prevmod=$(sed -n 's/last_modified_at:\s*//p' $1)
  lastmod=$(date -r $1 +'%Y-%m-%d %H:%M:%S %z')
  echo "prevmod is $prevmod\nlastmod is $lastmod"
  sed -i -e "s/last_modified_at: $prevmod/last_modified_at: $lastmod/g" $1
}

function wgetg {
	wget -c https://gist.github.com/$1
}

function wgetjs {
  cd $FGI/js/gist
	for i in "$@"
	do
		wget -c https://gist.github.com/$i.js

    # Replace GIST CSS link with local equiv
		GIST=https://assets-cdn.github.com/assets/
		CSS=/css/
		sed -i "s%$GIST%$CSS%g" $i.js
	done
}

function wgetcss {
	cd $FGI/css/gist
	for i in "$@"
	do
		wget -c https://assets-cdn.github.com/assets/gist/embed-$i.css
	done
}
