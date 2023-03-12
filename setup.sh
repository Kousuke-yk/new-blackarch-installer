#!/bin/sh
# https://youtu.be/pKrCLXkTGPQ
RINU=WANWANO
BA_REPO_URL='https://blackarch.cs.nycu.edu.tw/$repo/os/$arch'


msg()
{
    printf "\n\n$@\n\n"
}


slc()
{
    sleep $1
    clear
}


env_setup()
{
    msg '[+] Setting up Live Environment'

    printf "=> Breaking the signature check in the Live environment..."
    sed -i "s/Required DatabaseOptional/Never/" "/etc/pacman.conf"
    sed -i "s/LocalFileSigLevel/#LocalFileSigLevel/" "/etc/pacman.conf"
    
    msg '=> Install required packages...'
    pacman -Syy archlinux-keyring git wget --noconfirm --needed

    msg '=> Download and run strap.sh...'
    wget http://blackarch.org/strap.sh
    chmod 777 ./strap.sh
    ./strap.sh
    echo "Server = $BA_REPO_URL" > /etc/pacman.d/blackarch-mirrorlist
    pacman -Syy

    msg '=> Cloning and setting up the repository'
    git clone https://github.com/Kousuke-yk/new-blackarch-installer
    cd ./new-blackarch-installer

}


pak_setup()
{
    msg '[+] Installing BlackArch Installer'

    printf "=> Installing packages...\n\n"
    pacman -S blackarch-installer --noconfirm
    
    msg "=> Overwriting file..."
    cp ./blackarch-install /bin

    printf "=> Updating pacman database...\n\n"
    pacman -Syy

    msg "[+] BlackArch Installer is ready!"

}


setup()
{
    clear
    env_setup
    slc 1
    pak_setup
}


setup