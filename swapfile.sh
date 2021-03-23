#!/bin/bash
# Creating swap file 2GB and printing info in color

printf "\e[1;34mCreating swap file 2GB\n\e[0m"

printf "\e[1;33m[INFO]\e[0m -> \e[1;31mfallocate 2G\n\e[0m"
sudo fallocate -l 2G /swapfile
printf "\e[1;33m[INFO]\e[0m -> \e[1;34mfallocate 2G\e[0m \e[1;32mDONE\n\e[0m"

printf "\e[1;33m[INFO]\e[0m -> \e[1;31mbs 2048\n\e[0m"
sudo dd if=/dev/zero of=/swapfile bs=2048 count=1048576
printf "\e[1;33m[INFO]\e[0m -> \e[1;34mbs 2048\e[0m \e[1;32mDONE\n\e[0m"

printf "\e[1;33m[INFO]\e[0m -> \e[1;31mchmode 600\n\e[0m"
sudo chmod 600 /swapfile
printf "\e[1;33m[INFO]\e[0m -> \e[1;34mchmode 600\e[0m \e[1;32mDONE\n\e[0m"

printf "\e[1;33m[INFO]\e[0m -> \e[1;31mmkswap\n\e[0m"
sudo mkswap /swapfile
printf "\e[1;33m[INFO]\e[0m -> \e[1;34mmkswap\e[0m \e[1;32mDONE\n\e[0m"

printf "\e[1;33m[INFO]\e[0m -> \e[1;31mswapon\n\e[0m"
sudo swapon /swapfile
printf "\e[1;33m[INFO]\e[0m -> \e[1;34mswapon\e[0m \e[1;32mDONE\n\e[0m"

printf "\e[1;33m[INFO]\e[0m -> \e[1;31mswapon show\n\e[0m"
sudo swapon --show
printf "\e[1;33m[INFO]\e[0m -> \e[1;34mswapon show\e[0m \e[1;32mDONE\n\e[0m"

printf "\e[1;33m[INFO]\e[0m -> \e[1;31mshow free\n\e[0m"
sudo free -h
printf "\e[1;33m[INFO]\e[0m -> \e[1;34mshow free\e[0m \e[1;32mDONE\n\e[0m"
printf "\e[1;34mCreating swap file 2GB\e[0m\e[0m \e[1;32mDONE\n\e[0m"
