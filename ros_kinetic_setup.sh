#!/bin/bash
#ros setup for kinetic
#http://wiki.ros.org/ja/kinetic/Installation/Ubuntu
#http://wiki.ros.org/ja/ROS/Tutorials/InstallingandConfiguringROSEnvironment
cd
#sources.list settings
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#set key
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

#update
sudo apt-get update
sudo apt-get -y install ros-kinetic-desktop-full

#rosdepの初期化
sudo rosdep init
rosdep update

#環境設定
# echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
# source ~/.bashrc
#
# #rosinstallの準備
# #sudo apt-get -y install python-rosinstall python-rosinstall-generator python-wstool build-essential
#
# #make workspace
# mkdir -p ~/catkin_ws/src
# cd ~/catkin_ws/src
# #catkin_init_workspace
#
# #build workspace
# cd ~/catkin_ws/
# catkin_make
#
# #set workspace
# source devel/setup.bash

#echo ROS_PACKAGE_PATH
echo $ROS_PACKAGE_PATH



