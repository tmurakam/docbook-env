#!/bin/sh
aclocal
automake --add-missing --copy
autoconf

./configure --prefix=/usr
