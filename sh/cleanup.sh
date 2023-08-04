#!/bin/bash
ELEVATION=
if [ "$(whoami)" != "root" ]; then
	if [ -e "$(which doas)" ]; then
		ELEVATION=doas
	else
		ELEVATION=sudo
	fi
fi
$ELEVATION rm -rfv result/*
exit