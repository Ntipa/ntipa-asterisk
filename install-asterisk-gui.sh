#!/bin/sh

ASTGUI_AR=asterisk-gui-2.1.0-rc1.tar.gz;
ASTGUI_SRCDIR=asterisk-gui;
cd /tmp;
mkdir $ASTGUI_SRCDIR;

wget http://downloads.asterisk.org/pub/telephony/asterisk-gui/$ASTGUI_AR;

tar xzf $ASTGUI_AR -C $ASTGUI_SRCDIR --strip-components=1;

cd $ASTGUI_SRCDIR;

./configure; 
make;
make install;

mkdir /usr/share/asterisk/; 
ln -s /var/lib/asterisk/static-http/ /usr/share/asterisk/static-http;
