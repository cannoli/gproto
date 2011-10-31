PHP_SRCPATH=../php
PHP_TGTPATH=/srv/www/pogpanws.com/public_html/gproto
if [ ! -d $PHP_TGTPATH ];
then
	mkdir -p $PHP_TGTPATH
fi
cp -u $PHP_SRCPATH/*.php $PHP_TGTPATH
