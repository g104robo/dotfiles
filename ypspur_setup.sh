#!/bin/bash
mkdir -p ~/researches/programs/platform

#install SSM
cd ~/researches/programs/platform/
git clone http://www.roboken.iit.tsukuba.ac.jp/platform/repos/ssm.git
cd ssm/
./configure
make
sudo make install

#install ypspur
cd ~/researches/programs/platform/
git clone http://www.roboken.iit.tsukuba.ac.jp/platform/repos/yp-spur.git
cd yp-spur/
git branch roboken origin/roboken
git checkout roboken
./configure
make
sudo make install

#install yp-robot-params
cd ~/researches/programs/platform/
git clone http://www.roboken.iit.tsukuba.ac.jp/platform/repos/yp-robot-params.git
cd yp-robot-params/
./configure
sudo make install

#install yp-joystick
cd ~/researches/programs/platform/
git clone http://www.roboken.iit.tsukuba.ac.jp/platform/repos/yp-joystick.git
cd yp-joystick/
autoreconf -i -f
./configure
make
sudo make install

#install libscip2awd
cd ~/researches/programs/platform/
git clone http://www.roboken.iit.tsukuba.ac.jp/platform/repos/libscip2awd.git
cd libscip2awd/
autoreconf -i -f
./configure
make
sudo make install
