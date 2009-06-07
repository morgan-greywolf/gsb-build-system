if [ -x usr/bin/rarian-sk-update ]; then
  usr/bin/rarian-sk-update 1> /dev/null 2> /dev/null
fi

if [ -x usr/bin/update-desktop-database ]; then
  usr/bin/update-desktop-database 1> /dev/null 2> /dev/null
fi

if [ -x usr/bin/rarian-sk-update ]; then
  usr/bin/rarian-sk-update 1> /dev/null 2> /dev/null
fi

if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
	rm -f usr/share/icons/hicolor/icon-theme.cache
fi
usr/bin/gtk-update-icon-cache -f -q usr/share/icons/hicolor

# Set gthumb as auto camera command
# Not needed with nautilus 2.22
#usr/bin/gconftool-2 --direct --config-source=`usr/bin/gconftool-2 --get-default-source` --type string --set /desktop/gnome/volume_manager/autophoto_command "gthumb --import-photos" 2> /dev/null 1> /dev/null
#usr/bin/gconftool-2 --direct --config-source=`usr/bin/gconftool-2 --get-default-source` --type boolean --set /desktop/gnome/volume_manager/autophoto True

# Restart gconfd-2 if running to reload new gconf settings
if ps acx | grep -q gconfd-2 ; then
        killall -HUP gconfd-2 ;
fi