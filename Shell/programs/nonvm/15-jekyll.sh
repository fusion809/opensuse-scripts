cdfgi

# Check if the necessary packages are installed
RUBC=$(rpm -qi ruby-devel)
RUBG=$(rpm -qi rubygems)
ZLD=$(rpm -qi zlib-devel)

if [[ "$RUBC" == "package ruby-devel is not installed" ]]; then
	zpi ruby-devel
fi

if [[ "$RUBG" == "package rubygems is not installed" ]]; then
	zpi rubygems
fi

if [[ "$ZLD" == "package zlib-devel is not installed" ]]; then
	zpi zlib-devel
fi

bundle install
