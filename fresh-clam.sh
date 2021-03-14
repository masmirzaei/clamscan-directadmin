#!/bin/bash

DIR="/var/lib/clamav"
DIR2="/usr/local/share/clamav"
URL=""

if [ -d "$DIR" ]; then
echo "The path is: " $DIR
	rm -f $DIR/bytecode.*
	rm -f $DIR/daily.*
	rm -f $DIR/main.*

	wget -O $DIR/bytecode.cvd $URL/bytecode.cvd
	wget -O $DIR/daily.cvd $URL/daily.cvd
	wget -O $DIR/main.cvd $URL/main.cvd
elif [ -d "$DIR2" ]; then
echo "The path is: " $DIR2
	rm -f $DIR2/bytecode.*
	rm -f $DIR2/daily.*
	rm -f $DIR2/main.*


	wget -O $DIR2/bytecode.cvd $URL/bytecode.cvd
        wget -O $DIR2/daily.cvd $URL/daily.cvd
        wget -O $DIR2/main.cvd $URL/main.cvd


else
echo "The Paths Are Not Present"

fi

freshclam
