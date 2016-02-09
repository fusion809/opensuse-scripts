function cdfgi {
  cd $FGI
}

function jekex {
  cd $FGI
  bundle exec jekyll serve -I --future $@
}
