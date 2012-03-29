#!bin/bash
#A shell script to install for you installs the boiler script


# Defaults to /usr/local
prefix=/usr/local

if [! -d "/usr/local"]; then
	mkdir "/usr/local/bin"
	mkdir "/usr/local/Library"
fi

#copy the boiler to /usr/local/bin
cp bin/boiler $prefix/bin/boil

#copy the Library to /usr/local 
cp -RF Library/Boiler $prefix/Library/Boiler

