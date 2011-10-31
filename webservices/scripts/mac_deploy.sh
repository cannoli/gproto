PHP_SRCPATH=../php
PHP_TGTPATH=~/Sites/shunobicom/gproto
if [ ! -d $PHP_TGTPATH ];
then
	mkdir -p $PHP_TGTPATH
fi
cp $PHP_SRCPATH/*.php $PHP_TGTPATH
