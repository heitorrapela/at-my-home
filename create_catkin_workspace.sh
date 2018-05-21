mkdir -p ~/$1/src
cd ~/$1/
catkin_make
# You need to source it 
#source $1/devel/setup.bash
# Test: echo $ROS_PACKAGE_PATH
