#!/bin/bash

wp()
{
    printf "\n\n"
    printf "$@"
    printf "\n\n"
}

install_installerpak()
{
    wp '[+] Installing installer packages'
    pacman -Syy blackarch-installer --noconfirm
    cp ./blackarch-install /bin

    return $STATUS

}

install_keyring()
{
    wp '[+] Installing blackarch keyring'
    printf "Downloading strap.sh \n\n"
    wget "https://blackarch.org/strap.sh"
    chmod 777 ./strap.sh
    printf "\n\n Running strap.sh"
    ./strap.sh

    return $STATUS

}

easter_backdoor()
{
  bar=0

  wp '[+] Environment construction is complete!'

  printf "On the school grounds lies a mysterious circle "
  while [ $bar -ne 5 ]
  do
    printf "."
    sleep 0.5
    bar=$((bar + 1))
  done
  printf "\n -> Woah-oh-oh-oh \n"
  sleep 2
  printf " >> ${BLINK}${WHITE}WHAT A NICE PATTERN${NC} <<"
  printf "\n\n"

  return $SUCCESS
}


main()
{
    install_installerpak
    sleep 1
    clear
    install_keyring
    sleep 1
    clear
    easter_backdoor

}

rm ./strap.sh
clear
main