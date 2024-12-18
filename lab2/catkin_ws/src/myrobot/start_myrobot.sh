#!/bin/bash

#gnome-terminal -- bash -c "source ../devel/setup.sh; roscore; exec bash"

gnome-terminal -- bash -c "source ../../devel/setup.sh; roslaunch myrobot_control control.launch; exec bash"

sleep 5

gnome-terminal -- bash -c "source ../../devel/setup.sh; roslaunch myrobot_simulator gazebo_testwalls.launch; exec bash"

sleep 5

gnome-terminal -- bash -c "source ../../devel/setup.sh; roslaunch myrobot_description rviz.launch; exec bash"

sleep 10

#gnome-terminal -- bash -c "source ../devel/setup.sh; rqt; exec bash"

source ../../devel/setup.sh;
roslaunch myrobot_teleop teleop_keyboard.launch

#roslaunch myrobot_teleop teleop_auto.launch