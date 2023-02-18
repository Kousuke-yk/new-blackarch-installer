#!/bin/sh
LANG=1
RINU=FALSE

wp1()
{
	printf "\n\n $@ \n\n"
}

wp2()
{
	printf "WARNING: $@ \n"
}

install()
{
	wp1 '[+] Installing BlackArch Tools'
	wp2 'This can take a few hours or more.
	Please wait while drinking coke or tea...'

	sleep 2

	sudo pacman -Syy blackarch --needed --disabledownloadtimeout --overwrite='*' --noconfirm
}

signck()
{
	wp1 '[+] Setting up signature check'

	if [ "$@" = "1" ]
	then
	printf "Disabling signature check..."
	sed -i "s/Required DatabaseOptional/Never/" "/etc/pacman.conf"
        sed -i "s/LocalFileSigLevel/#LocalFileSigLevel/" "/etc/pacman.conf"
else
	printf "Restoring default settings..."
	sed -i "s/Never/Required DatabaseOptional/" "/etc/pacman.conf"
        sed -i "s/#LocalFileSigLevel/LocalFileSigLevel/" "/etc/pacman.conf"
	
	fi
}


update_initramfs()
{
	wp1 '[+] Updating InitramFS'

	mkinitcpio -P
}

main()
{
	clear
	signck '1'
	sleep 1
	install
	sleep 1
	clear
	signck
	sleep 1
	clear
	update_initramfs
	sleep 1
	clear
	finish
}

main