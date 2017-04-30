#!/bin/bash

CONF_FILE=~/lists.conf

TOKEN=$1

echo "Karte $TOKEN aktiviert";

PLAYLIST=`cat $CONF_FILE | grep $TOKEN | awk -F "=" '{print $2}'`

if [ "x" != "x$PLAYLIST" ] ; then
	echo "Starte Playlist \"$PLAYLIST\" "
	mpc clear
	mpc load "$PLAYLIST"
	mpc play
fi