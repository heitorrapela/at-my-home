mkdir ~/tiago_public_ws
wget https://raw.githubusercontent.com/pal-robotics/tiago_tutorials/indigo-devel/tiago_public.rosinstall
sudo cp -i tiago_public.rosinstall ~/tiago_public_ws
cd ~/tiago_public_ws
sudo rosinstall src /opt/ros/indigo tiago_public.rosinstall
echo "source ~/tiago_public_ws/src/setup.bash" >> ~/.bashrc
source ~/.bashrc
rosdep update
sudo rosdep install --from-paths src --ignore-src --rosdistro indigo --skip-keys="opencv2 opencv2-nonfree pal_laser_filters speed_limit sensor_to_cloud"
cd ~/tiago_public_ws
source /opt/ros/indigo/setup.bash
catkin build
## Check if there is an updated version of the world!!
wget https://raw.githubusercontent.com/RaphaBrito/TIAGo/master/world/robocinV3.world
sudo cp robocinV3.world ~/tiago_public_ws/src/tiago_simulation/tiago_gazebo/worlds

## Open a terminal and type
# source ~/tiago_public_ws/devel/setup.bash
# roslaunch tiago_gazebo tiago_gazebo.launch public_sim:=true robot:=titanium world:=robocinV3