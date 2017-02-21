cdfgi

# Check if the necessary packages are installed
if ! [[ -d /usr/share/doc/packages/ruby-devel ]]; then
	zpi ruby-devel
fi

if ! [[ -d /usr/share/doc/packages/ruby ]]; then
	zpi rubygems
fi

if ! [[ -d /usr/share/doc/packages/zlib-devel ]]; then
	zpi zlib-devel
fi

bundle install --quiet
