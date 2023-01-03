#!/bin/sh



OPTIONS="省\tLogout\n鈴\tSleep\n\tShutdown\n\tReboot"

option=`echo -e $OPTIONS | awk '{print $1}' | tr -d '\r\n\t'`
if [ "$@" ]
then
	case $@ in
		*Logout)
			i3-msg exit
			;;
		*Sleep)
			sh ~/.config/i3/i3_sleep.sh
			;;
		*Shutdown)
			systemctl poweroff
			;;
		*Reboot)
			systemctl reboot
			;;
	esac
else
	echo -e $OPTIONS
fi
