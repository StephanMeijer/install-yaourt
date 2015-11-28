#!/bin/sh

if hash yaourt 2>/dev/null; then
    echo Yaourt is already installed
else
    pacman -Ss base-devel || sudo pacman -S base-devel
    pacman -Ss yajl || sudo pacman -S yajl

    wget https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz  # download source tarball
    tar xfz package-query.tar.gz
    cd package-query  &&  makepkg
    sudo pacman -U package-query*.pkg.tar.xz
    
    wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
    tar xzf yaourt.tar.gz
    cd yaourt  &&  makepkg
    sudo pacman -U yaourt*.pkg.tar.xz
fi
