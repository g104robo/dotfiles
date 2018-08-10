#!/bin/bash

packagelist=(
#terminal
     "gnome-terminal" 
     "tmux"
     #"terminator" 
     "mlterm"
     #"byobu"

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
     "python3-pip"
     "python-pip"

#グラフ描画
    "gnuplot"
    "gnuplot-x11"

#other
    "redshift"
    "redshift-gtk"
    "vlc"
    "kazam"
    "gimp"
    "cups-pdf"
)

echo "start apt install apps..."
for list in ${packagelist[@]}; do
    sudo apt install -y ${list}
done

sudo apt update -y
sudo apt upgrade -y

#入力メソッドをfcitxに切り替える
im-config -n fcitx

#install tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#install neovim
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim

#install xkeysnail
sudo pip3 install xkeysnail
