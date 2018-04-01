# bhimbot_arm

This is a six DOF arm used for pick and place activity.

Installation
-------------
```
mkdir catkin_bhimbot
cd catkin_bhimbot
mkdir src
cd src
git clone https://github.com/NitinPJ11/bhimbot_arm.git
cd ..
catkin_make
source devel/setup.bash
```

Demo
-----
1. Please launch the following launch file to view the arm in RViz and Gazebo. You can use the slider(Joint State Publisher) to visualize the arm movements in RViz.

```
roslaunch bhimbot_arm view_arm.launch
```

2. Please execute the following commands to know the working of bhimbot arm using ros_control.

```
roslaunch bhimbot_arm control_arm.launch
sh src/bhimbot_arm/scripts/sample_pick_n_place.sh
```
