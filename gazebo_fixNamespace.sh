#mkdir ~/.gazebo/models/
cd ~/.gazebo/
wget -r -R "index\.html*" http://models.gazebosim.org/
mv models.gazebosim.org/* models
echo "export LC_NUMERIC=C" >> ~/.bashrc
source ~/.bashrc