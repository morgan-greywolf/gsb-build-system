#/bin/sh
#
# Prompt to install packages that have multiple versions
#
# $Id$

FRGROOT=`dirname $0`

# Install GNUMERIC
printf "*********************************

Select which Gnumeric (spreadsheet) to install\n"

echo "
0) Do not install
1) Gnumeric 1.4.3 (stable version)
2) Gnumeric 1.5.0 (unstable version)
"

printf "Selection: "
read gnumeric_selection
echo ""

case "$gnumeric_selection" in
'0')
	echo "Gnumeric Not installed"
	;;
'1')
	upgradepkg --install-new $FRGROOT/dups/gnumeric-1.4.3-*frg.tgz
	;;
'2')
	upgradepkg --install-new $FRGROOT/testing/gnumeric-1.5.0-*frg.tgz
	;;
*)
	echo "Invalid selection"
	echo "Installing stable Gnumeric"
	upgradepkg --install-new $FRGROOT/dups/gnumeric-1.4.3-*frg.tgz
esac

# Install Drivel

printf "*********************************

Select which Drivel (blog client) to install\n"

echo "
0) Do not install
1) Drivel 1.2.4 (stable version)
2) Drivel 1.3.2 (development version)
"

printf "Selection: "
read drivel_selection
echo ""

case "$drivel_selection" in
'0')
	echo "Drivel Not installed"
	;;
'1')
	upgradepkg --install-new $FRGROOT/dups/drivel-1.2.4-*frg.tgz
	;;
'2')
	upgradepkg --install-new $FRGROOT/alternatives/drivel-1.3.2-*frg.tgz
	;;
*)
	echo "Invalid selection"
	echo "Installing stable Drivel"
	upgradepkg --install-new $FRGROOT/dups/drivel-1.2.4-*frg.tgz
esac

# Install GIMP

printf "*********************************

Select which GIMP to install\n"

echo "
0) Do not install
1) GIMP 2.2.4 
2) GIMP 2.2.4 with pygimp installed
"

printf "Selection: "
read gimp_selection
echo ""

case "$gimp_selection" in
'0')
	echo "Gimp Not installed"
	;;
'1')
	upgradepkg --install-new $FRGROOT/dups/gimp-2.2.4-*frg.tgz
	;;
'2')
	upgradepkg --install-new $FRGROOT/alternatives/gimp-2.2.4python-*frg.tgz
	;;
*)
	echo "Invalid selection"
	echo "Installing stable GIMP"
	upgradepkg --install-new $FRGROOT/dups/gimp-2.2.4-*frg.tgz
esac
