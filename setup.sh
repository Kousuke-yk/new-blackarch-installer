#!/bin/sh
# https://youtu.be/pKrCLXkTGPQ
RINU=WANWANO


msg()
{
    printf "\n\n$@\n\n"
}


slc()
{
    sleep $1
    clear
}


pak_setup()
{
    msg '[+] Installing BlackArch Installer'

    printf "=> Breaking the signature check in the Live environment..."
    	sed -i "s/Required DatabaseOptional/Never/" "/etc/pacman.conf"
        sed -i "s/LocalFileSigLevel/#LocalFileSigLevel/" "/etc/pacman.conf"

    msg "=> Fetching files..."
        wget http://blackarch.cs.nctu.edu.tw/blackarch/os/x86_64/blackarch-installer-1.2.22-1-any.pkg.tar.zst
    
    msg "=> Installing packages..."
        pacman -U ./blackarch-installer-1.2.22-1-any.pkg.tar.zst --noconfirm
    
    msg "=> Overwriting file..."
    cp ./blackarch-install /bin

    printf "Updating pacman database...\n\n"
    pacman -Syy

    msg "[+] BlackArch Installer is ready!"

}

setup()
{
    clear
    pak_setup
}

setup