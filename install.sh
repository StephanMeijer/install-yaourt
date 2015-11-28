sudo pacman -S base-devel yajl

wget https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz  # download source tarball
tar xfz package-query.tar.gz
cd package-query  &&  makepkg
sudo pacman -U package-query*.pkg.tar.xz

wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
tar xzf yaourt.tar.gz
cd yaourt  &&  makepkg
sudo pacman -U yaourt*.pkg.tar.xz
