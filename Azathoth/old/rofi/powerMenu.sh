#!/bin/sh



OPTIONS="省\tExit Window Manager\n鈴\tSleep\n\tShutdown\n\tReboot"

option=`echo -e $OPTIONS | awk '{print $1}' | tr -d '\r\n\t'`
if [ "$@" ]
then
	case $@ in
		*'Exit Window Manager')
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
