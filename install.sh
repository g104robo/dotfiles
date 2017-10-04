#!/bin/bash

packagelist=(
#terminal
     "gnome-terminal" 
     "terminator" 
     "mlterm"
     "byobu"

#日本語化パッケージ
     "ubuntu-defaults-ja"
     "language-pack-ja"
     #"language-pack-kde-ja"
     "language-pack-gnome-ja"
     #"kde-l10n-ja"
     "manpages-ja"
     "manpages-ja-dev"
     "fcitx-mozc"

#開発環境
     "build-essential"
     "cmake"
     "cmake-qt-gui"
     "cmake-curses-gui"
     "automake"
     "libtool"
     "git"
     "gitk"
     "meld"
     "libboost-all-dev"
     "vim"
     "silversearcher-ag"

#グラフ描画
    "gnuplot"
    "gnuplot-x11"

)

echo "start apt install apps..."
for list in ${packagelist[@]}; do
    sudo apt install -y ${list}
done

sudo apt update
sudo apt upgrade
